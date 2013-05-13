.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field alwaysOnSetting:Lcom/android/settings/AlwaysOnSettings;

.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mNetworkIndicatorSet:Landroid/preference/ListPreference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcPreference:Landroid/preference/Preference;

.field private mNsdEnabler:Lcom/android/settings/NsdEnabler;

.field telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method enableSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 314
    const-string v1, "gsm.operator.numeric"

    const-string v2, "00000"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, opNumeric:Ljava/lang/String;
    const-string v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opNumeric is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "450"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "alwayson_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 320
    const-string v1, "network_indicator_set"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v1, "alwayson_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    const-string v1, "network_indicator_set"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 339
    const v0, 0x7f0b069e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 304
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 305
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 307
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 310
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v14, 0x7f05003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 125
    .local v1, activity:Landroid/app/Activity;
    const-string v14, "toggle_airplane"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 127
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 128
    const-string v14, "mobile_network_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "com.android.phone"

    const-string v16, "com.android.phone.MSimMobileNetworkSettings"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    :cond_0
    const-string v14, "nfc_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->mNfcPreference:Landroid/preference/Preference;

    .line 140
    const-string v14, "toggle_nsd"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 142
    .local v8, nsd:Landroid/preference/CheckBoxPreference;
    new-instance v14, Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v14, v1, v15}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "airplane_mode_toggleable_radios"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 153
    .local v13, toggleable:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110037

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 155
    .local v5, isWimaxEnabled:Z
    if-nez v5, :cond_b

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 157
    .local v12, root:Landroid/preference/PreferenceScreen;
    const-string v14, "wimax_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 158
    .local v11, ps:Landroid/preference/Preference;
    if-eqz v11, :cond_1

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    .end local v11           #ps:Landroid/preference/Preference;
    .end local v12           #root:Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_0
    if-eqz v13, :cond_2

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 168
    :cond_2
    const-string v14, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const-string v15, "toggle_airplane"

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 172
    :cond_3
    if-eqz v13, :cond_4

    const-string v14, "bluetooth"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 177
    :cond_4
    if-eqz v13, :cond_5

    const-string v14, "nfc"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 183
    :cond_5
    const-string v14, "nfc_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const-string v15, "toggle_airplane"

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 187
    :cond_6
    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v14, :cond_7

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/WirelessSettings;->mNfcPreference:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "mobile_network_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    :cond_8
    const-string v14, "proxy_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 206
    .local v7, mGlobalProxy:Landroid/preference/Preference;
    const-string v14, "device_policy"

    invoke-virtual {v1, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 209
    .local v6, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v14

    if-nez v14, :cond_d

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v7, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 213
    const-string v14, "connectivity"

    invoke-virtual {v1, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 215
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v14

    if-nez v14, :cond_e

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110039

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 226
    .local v4, isCellBroadcastAppLinkEnabled:Z
    if-eqz v4, :cond_9

    .line 227
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 228
    .local v10, pm:Landroid/content/pm/PackageManager;
    const-string v14, "com.android.cellbroadcastreceiver"

    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    .line 230
    const/4 v4, 0x0

    .line 238
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 239
    .restart local v12       #root:Landroid/preference/PreferenceScreen;
    const-string v14, "cell_broadcast_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 240
    .restart local v11       #ps:Landroid/preference/Preference;
    if-eqz v11, :cond_a

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    :cond_a
    const-string v14, "alwayson_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/AlwaysOnSettings;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->alwaysOnSetting:Lcom/android/settings/AlwaysOnSettings;

    .line 244
    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 246
    const-string v14, "network_indicator_set"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/WirelessSettings;->mNetworkIndicatorSet:Landroid/preference/ListPreference;

    .line 249
    return-void

    .line 160
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #isCellBroadcastAppLinkEnabled:Z
    .end local v6           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v7           #mGlobalProxy:Landroid/preference/Preference;
    .end local v11           #ps:Landroid/preference/Preference;
    .end local v12           #root:Landroid/preference/PreferenceScreen;
    :cond_b
    if-eqz v13, :cond_c

    const-string v14, "wimax"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    if-eqz v5, :cond_1

    .line 162
    :cond_c
    const-string v14, "wimax_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 163
    .restart local v11       #ps:Landroid/preference/Preference;
    const-string v14, "toggle_airplane"

    invoke-virtual {v11, v14}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    .end local v11           #ps:Landroid/preference/Preference;
    .restart local v6       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v7       #mGlobalProxy:Landroid/preference/Preference;
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 218
    .restart local v2       #cm:Landroid/net/ConnectivityManager;
    :cond_e
    const-string v14, "tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 219
    .local v9, p:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_2

    .line 233
    .end local v9           #p:Landroid/preference/Preference;
    .restart local v4       #isCellBroadcastAppLinkEnabled:Z
    :catch_0
    move-exception v3

    .line 234
    .local v3, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 284
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 291
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NsdEnabler;->pause()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->alwaysOnSetting:Lcom/android/settings/AlwaysOnSettings;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->alwaysOnSetting:Lcom/android/settings/AlwaysOnSettings;

    invoke-virtual {v0}, Lcom/android/settings/AlwaysOnSettings;->pause()V

    .line 300
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "object"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNetworkIndicatorSet:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNetworkIndicatorSet:Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_ind_lte_overlay"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 333
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 96
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 255
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 262
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/settings/NsdEnabler;->resume()V

    .line 267
    :cond_0
    const-string v0, ""

    .line 268
    .local v0, indicatorOpt:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_ind_lte_overlay"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    :cond_1
    const-string v0, "0"

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_ind_lte_overlay"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNetworkIndicatorSet:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNetworkIndicatorSet:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->enableSettings()V

    .line 278
    return-void
.end method
