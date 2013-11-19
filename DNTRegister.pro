#-------------------------------------------------
#
# Project created by QtCreator 2013-10-16T11:59:45
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = DNTRegister
TEMPLATE = app

win32 {
LIBS += -lWs2_32
}


SOURCES += main.cpp\
        register.cpp \
    zlib.cpp \
    zinflate.cpp \
    zdeflate.cpp \
    xtrcrypt.cpp \
    xtr.cpp \
    winpipes.cpp \
    whrlpool.cpp \
    wake.cpp \
    wait.cpp \
    vmac.cpp \
    twofish.cpp \
    ttmac.cpp \
    trdlocal.cpp \
    tigertab.cpp \
    tiger.cpp \
    tftables.cpp \
    tea.cpp \
    strciphr.cpp \
    squaretb.cpp \
    square.cpp \
    sosemanuk.cpp \
    socketft.cpp \
    skipjack.cpp \
    simple.cpp \
    sharkbox.cpp \
    shark.cpp \
    shacal2.cpp \
    sha3.cpp \
    sha.cpp \
    serpent.cpp \
    seed.cpp \
    seal.cpp \
    salsa.cpp \
    safer.cpp \
    rw.cpp \
    rsa.cpp \
    rng.cpp \
    ripemd.cpp \
    rijndael.cpp \
    rdtables.cpp \
    rc6.cpp \
    rc5.cpp \
    rc2.cpp \
    randpool.cpp \
    rabin.cpp \
    queue.cpp \
    pubkey.cpp \
    pssr.cpp \
    polynomi.cpp \
    pkcspad.cpp \
    pch.cpp \
    panama.cpp \
    osrng.cpp \
    oaep.cpp \
    network.cpp \
    nbtheory.cpp \
    mqv.cpp \
    mqueue.cpp \
    modes.cpp \
    misc.cpp \
    md5.cpp \
    md4.cpp \
    md2.cpp \
    marss.cpp \
    mars.cpp \
    luc.cpp \
    iterhash.cpp \
    integer.cpp \
    ida.cpp \
    hrtimer.cpp \
    hmac.cpp \
    hex.cpp \
    gzip.cpp \
    gost.cpp \
    gfpcrypt.cpp \
    gf256.cpp \
    gf2n.cpp \
    gf2_32.cpp \
    gcm.cpp \
    fipsalgt.cpp \
    fips140.cpp \
    filters.cpp \
    files.cpp \
    esign.cpp \
    eprecomp.cpp \
    emsa2.cpp \
    elgamal.cpp \
    ecp.cpp \
    eccrypto.cpp \
    ec2n.cpp \
    eax.cpp \
    dsa.cpp \
    dll.cpp \
    dh2.cpp \
    dh.cpp \
    dessp.cpp \
    des.cpp \
    default.cpp \
    cryptlib.cpp \
    crc.cpp \
    cpu.cpp \
    cmac.cpp \
    channels.cpp \
    ccm.cpp \
    cbcmac.cpp \
    casts.cpp \
    cast.cpp \
    camellia.cpp \
    blumshub.cpp \
    blowfish.cpp \
    bfinit.cpp \
    basecode.cpp \
    base64.cpp \
    base32.cpp \
    authenc.cpp \
    asn.cpp \
    arc4.cpp \
    algparam.cpp \
    algebra.cpp \
    adler32.cpp \
    3way.cpp \
    register.cpp

HEADERS  += register.h \
    zlib.h \
    zinflate.h \
    zdeflate.h \
    xtrcrypt.h \
    xtr.h \
    words.h \
    winpipes.h \
    whrlpool.h \
    wake.h \
    wait.h \
    vmac.h \
    twofish.h \
    ttmac.h \
    trunhash.h \
    trdlocal.h \
    tiger.h \
    tea.h \
    strciphr.h \
    stdcpp.h \
    square.h \
    sosemanuk.h \
    socketft.h \
    smartptr.h \
    skipjack.h \
    simple.h \
    shark.h \
    shacal2.h \
    sha3.h \
    sha.h \
    serpentp.h \
    serpent.h \
    seed.h \
    seckey.h \
    secblock.h \
    seal.h \
    salsa.h \
    safer.h \
    rw.h \
    rsa.h \
    rng.h \
    ripemd.h \
    rijndael.h \
    rc6.h \
    rc5.h \
    rc2.h \
    randpool.h \
    rabin.h \
    queue.h \
    pwdbased.h \
    pubkey.h \
    pssr.h \
    polynomi.h \
    pkcspad.h \
    pch.h \
    panama.h \
    osrng.h \
    oids.h \
    oaep.h \
    nr.h \
    network.h \
    nbtheory.h \
    mqv.h \
    mqueue.h \
    modexppc.h \
    modes.h \
    modarith.h \
    misc.h \
    mdc.h \
    md5.h \
    md4.h \
    md2.h \
    mars.h \
    luc.h \
    lubyrack.h \
    iterhash.h \
    integer.h \
    ida.h \
    hrtimer.h \
    hmac.h \
    hex.h \
    Header.h \
    gzip.h \
    gost.h \
    gfpcrypt.h \
    gf256.h \
    gf2n.h \
    gf2_32.h \
    gcm.h \
    fltrimpl.h \
    fips140.h \
    filters.h \
    files.h \
    factory.h \
    esign.h \
    eprecomp.h \
    emsa2.h \
    elgamal.h \
    ecp.h \
    eccrypto.h \
    ec2n.h \
    eax.h \
    dsa.h \
    dll.h \
    dh2.h \
    dh.h \
    des.h \
    default.h \
    cryptlib.h \
    crc.h \
    cpu.h \
    config.h \
    cmac.h \
    channels.h \
    ccm.h \
    cbcmac.h \
    cast.h \
    camellia.h \
    blumshub.h \
    blowfish.h \
    basecode.h \
    base64.h \
    base32.h \
    authenc.h \
    asn.h \
    argnames.h \
    arc4.h \
    algparam.h \
    algebra.h \
    aes.h \
    adler32.h \
    3way.h

FORMS    += register.ui

RESOURCES += \
    register.qrc

OTHER_FILES += \
    README.md
