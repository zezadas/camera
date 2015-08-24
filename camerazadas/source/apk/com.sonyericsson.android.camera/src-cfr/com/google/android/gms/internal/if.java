/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

public enum if {
    DC("Ok"),
    DD("BadAuthentication"),
    DE("InvalidSecondFactor"),
    DF("NotVerified"),
    DG("TermsNotAgreed"),
    DH("Unknown"),
    DI("UNKNOWN_ERR"),
    DJ("AccountDeleted"),
    DK("AccountDisabled"),
    DL("ServiceDisabled"),
    DM("ServiceUnavailable"),
    DN("CaptchaRequired"),
    DO("NetworkError"),
    DP("UserCancel"),
    DQ("PermissionDenied"),
    DR("DeviceManagementRequiredOrSyncDisabled"),
    DS("DeviceManagementInternalError"),
    DT("DeviceManagementSyncDisabled"),
    DU("DeviceManagementAdminBlocked"),
    DV("DeviceManagementAdminPendingApproval"),
    DW("DeviceManagementStaleSyncRequired"),
    DX("DeviceManagementDeactivated"),
    DY("DeviceManagementRequired"),
    DZ("ClientLoginDisabled"),
    Ea("NeedPermission"),
    Eb("WeakPassword"),
    Ec("ALREADY_HAS_GMAIL"),
    Ed("BadRequest"),
    Ee("BadUsername"),
    Ef("LoginFail"),
    Eg("NotLoggedIn"),
    Eh("NoGmail"),
    Ei("RequestDenied"),
    Ej("ServerError"),
    Ek("UsernameUnavailable"),
    El("DeletedGmail"),
    Em("SocketTimeout"),
    En("ExistingUsername"),
    Eo("NeedsBrowser"),
    Ep("GPlusOther"),
    Eq("GPlusNickname"),
    Er("GPlusInvalidChar"),
    Es("GPlusInterstitial"),
    Et("ProfileUpgradeError"),
    Eu("INVALID_SCOPE");
    
    public static String Ev;
    public static String Ew;
    private final String Ex;

    static {
        Ev = "Error";
        Ew = "status";
    }

    private if(String string2) {
        this.Ex = string2;
    }

    public String ft() {
        return this.Ex;
    }
}

