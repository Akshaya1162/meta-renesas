FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_rzg1 = "git://github.com/renesas-devel/gst-plugins-good.git;protocol=git;branch=RCAR-GEN2/1.2.3 \
"
SRCREV_rzg1 = "e752441fef9f70c97bb0976476fdaa6c7df27b6b"

LIC_FILES_CHKSUM_remove_rzg1 = "\
    file://common/coverage/coverage-report.pl;beginline=2;endline=17;md5=a4e1830fce078028c8f0974161272607 \
"

S = "${WORKDIR}/git"

do_configure() {
    ./autogen.sh --noconfigure
    oe_runconf
}
