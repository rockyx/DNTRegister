#include "register.h"
#include <string>
#include "base64.h"
#include "osrng.h"
#include "ui_register.h"

using namespace std;
using namespace CryptoPP;

static const char* theN = "2440816252823285233810869578522396920937064836015308255025770116368471245238891377886655827863376547145602207235628667347169214925277619850649995016745222927366751874925959500368072599272967947348164345202557296918419996274561401818437741790994828240029939900490934660468635215915404774173966828233781157191084398787403676734374012691352723866261601858436147554685626667100495459169468371845966144026053177582073177384843908210611713622391143035267966171887771226193701917268336152595404283772272552530587972724856401614254788279018324395192839766490947448947327518591481635234241242856913646397133141203134853111839980524200985357427602090821751721953922361894523664850608867594845069649355658932045897783784197939744921498830761459381818729095253263804667889049688321534000932261304558719655241477629934113342581863585365419210706069231547272336731161679447444718222924352762023292058718215877940949451532527692847010638070973127382245736872772360423353378741885799080125412556722465786330063424777133583648558655107227830199572536967941889445212117622378063890739151029762267439730070328530352367261063374927218708461130115467697807995697573588041228824260461037735388504375811525072787730489406257830809245538033407225099235719637";
static const char *theE = "520867428764322287956";
static const char *theD = "6631469748128439641093466942634298934310183617519785922832753364779504545442819243929372396326252892806279538949438336090451052942419560485725808425139665452314595491508746653641979734940110006508423323894853626068431652144372809462467897929315717758496041997753944167900641739951095600981663228301603973102328728356949181328932687752511026655924715687291073657115904361406992272742712103290190582340730909335899869474441882750868966612226430720681984316990446720160233780254640558658477370027999245397971141960223503631489607372083144501541140137376902158628244247383822407112867446141748459602582988244740708147243041490038704478674187516912473640086150475883413416419043559218279857692277263225321885288510353194417297415550578038891059137840689894680913692729327023002460593466290787647478860545291703776439619530111067066172349111222858813180998943099392501345560985497776043124669696919430128651859331884305473802348916202196552891884368907863723742480379562184628903067830946485102499067941935834976169248148345766508953066278488143098179385402295488972232456204464004698866491979082021708065979612455216709710029237202401744728024709940757140693227210826765663880836710099699802821571316573433951101749896869773760554823386485432388138304389456364244399112900391039771347122716036879496282871688668349472311822797231519507614822068307375172370530896941123923954739043564289242127195229719604596957031061498186581617793991013046547815324034982562741195477652010964731871833843101287056806480718363439469089518232947929463078838772443036546598148542488466851814918989038547005596200546751839751977317875711137113213326659705309410008721491805153910162044565649232928213650338417728333946014366760479133529367563176410907689113832128632852667922325801225987218166519002144201447724479700709643173059325620721185711001962559468057413215728795624565761853757057100821977970544164556723940825574893106924995821238384630009829976768719418882193141859435906525271887037939195284208719705089389052125504457822373955021685435429116976493023818555822558962084333254617359157583843308988927840111142364592236471161774231431923574976896724646748139060694413058568969024304895870082352272392651421124867924902440748273905974022226183227903011727192408033507864759888334119593384456467432431521562586146988621666632791906406258976842925018456527599500805963180044431835063675006595323426763684269243039015300645377512929896921915441470079808163316201484963551791621089880";

DNTRegister::DNTRegister(QWidget *parent)
    : QDialog(parent)
    , _ui(new Ui::RegisterClass())
    , _params()
{
    _ui->setupUi(this);
    connect(_ui->make, SIGNAL(clicked()), this, SLOT(onMake()));

    string n;
    string e;
    string d;

    auto length = strlen(theN);
    for (decltype(length) i = 0; i < length; i += 2)
        n.push_back(theN[i]);

    length = strlen(theE);
    for (decltype(length) i = 0; i < length; i += 3)
        e.push_back(theE[i]);

    length = strlen(theD);
    for (decltype(length) i = 0; i < length; i += 4)
        d.push_back(theD[i]);

    _params.Initialize(Integer(n.c_str()),
                       Integer(e.c_str()),
                       Integer(d.c_str()));
}

DNTRegister::~DNTRegister()
{
    delete _ui;
}

void DNTRegister::onMake()
{
    string plain;
    string cipher;
    string base64;

    plain.append(_ui->idCode->text().append("\n").toStdString());
    plain.append(_ui->commboxID->text().append("\n").toStdString());
    plain.append(_ui->firstTime->dateTime().toString(Qt::ISODate).append("\n").toStdString());
    plain.append(_ui->expireTime->dateTime().toString(Qt::ISODate).append("\n").toStdString());
    plain.append("2043ED8E-4E35-4BFA-AC29-1756E553405D\n");
    plain.append(_ui->language->currentText().append("\n").toStdString());
    if (_ui->sdkCheckBox->isChecked())
        plain.append("Do Forget Commit!\n");

    AutoSeededRandomPool rng;
    RSA::PublicKey publicKey(_params);
    RSAES_OAEP_SHA_Encryptor e(publicKey);
    StringSource(plain, true, new PK_EncryptorFilter(rng, e, new StringSink(cipher)));
    StringSource(cipher, true, new Base64Encoder(new StringSink(base64)));

    _ui->output->setText(QString::fromStdString(base64));
}
