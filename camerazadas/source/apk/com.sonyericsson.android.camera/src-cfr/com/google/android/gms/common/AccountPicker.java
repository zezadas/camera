/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import java.io.Serializable;
import java.util.ArrayList;

public final class AccountPicker {
    private AccountPicker() {
    }

    public static Intent a(Account account, ArrayList<Account> arrayList, String[] arrstring, boolean bl, String string, String string2, String[] arrstring2, Bundle bundle, boolean bl2) {
        return AccountPicker.a(account, arrayList, arrstring, bl, string, string2, arrstring2, bundle, bl2, 0, 0);
    }

    public static Intent a(Account account, ArrayList<Account> arrayList, String[] arrstring, boolean bl, String string, String string2, String[] arrstring2, Bundle bundle, boolean bl2, int n, int n2) {
        Intent intent = new Intent();
        intent.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("allowableAccounts", arrayList);
        intent.putExtra("allowableAccountTypes", arrstring);
        intent.putExtra("addAccountOptions", bundle);
        intent.putExtra("selectedAccount", account);
        intent.putExtra("alwaysPromptForAccount", bl);
        intent.putExtra("descriptionTextOverride", string);
        intent.putExtra("authTokenType", string2);
        intent.putExtra("addAccountRequiredFeatures", arrstring2);
        intent.putExtra("setGmsCoreAccount", bl2);
        intent.putExtra("overrideTheme", n);
        intent.putExtra("overrideCustomTheme", n2);
        return intent;
    }

    public static Intent newChooseAccountIntent(Account account, ArrayList<Account> arrayList, String[] arrstring, boolean bl, String string, String string2, String[] arrstring2, Bundle bundle) {
        return AccountPicker.a(account, arrayList, arrstring, bl, string, string2, arrstring2, bundle, false);
    }
}

