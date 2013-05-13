.class public Lcom/android/settings/MultiSimSettings;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mConfigSub:Landroid/preference/PreferenceScreen;

.field private mData:Landroid/preference/ListPreference;

.field private mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

.field private mSms:Landroid/preference/ListPreference;

.field private mVoice:Landroid/preference/ListPreference;

.field subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    .line 270
    new-instance v0, Lcom/android/settings/MultiSimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MultiSimSettings$1;-><init>(Lcom/android/settings/MultiSimSettings;)V

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateDataSummary()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateVoiceSummary()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateSmsSummary()V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateDataSummary()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    const/4 v0, -0x1

    .line 171
    .local v0, Data_val:I
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 174
    .local v2, summaries:[Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_data_call"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 180
    :goto_0
    const-string v3, "MultiSimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataSummary: Data_val = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-nez v0, :cond_0

    .line 182
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    :goto_1
    return-void

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "MultiSimSettings"

    const-string v4, "Settings Exception Reading Multi Sim Data Subscription Value."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 184
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    if-ne v0, v7, :cond_1

    .line 185
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 188
    :cond_1
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateSmsSummary()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    const/4 v0, -0x1

    .line 195
    .local v0, Sms_val:I
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 198
    .local v2, summaries:[Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_sms"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    :goto_0
    const-string v3, "MultiSimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSmsSummary: Sms_val = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-nez v0, :cond_0

    .line 206
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    :goto_1
    return-void

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "MultiSimSettings"

    const-string v4, "Settings Exception Reading Multi Sim SMS Call Values."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 208
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    if-ne v0, v7, :cond_1

    .line 209
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 212
    :cond_1
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateVoiceSummary()V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateDataSummary()V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateSmsSummary()V

    .line 145
    return-void
.end method

.method private updateVoiceSummary()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 149
    .local v3, summaries:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v4

    .line 150
    .local v4, voiceSub:I
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->isPromptEnabled()Z

    move-result v1

    .line 151
    .local v1, promptEnabled:Z
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 153
    .local v0, count:I
    const-string v5, "MultiSimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateVoiceSummary: voiceSub =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " promptEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " number of active SUBs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz v1, :cond_0

    if-ne v0, v8, :cond_0

    .line 158
    const-string v5, "MultiSimSettings"

    const-string v6, "prompt is enabled: setting value to : 2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    const-string v6, "2"

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 160
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, sub:Ljava/lang/String;
    const-string v5, "MultiSimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting value to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 165
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method displayAlertDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    if-nez v0, :cond_0

    .line 366
    const-string v0, "MultiSimSettings"

    const-string v1, "The activitiy is not in foreground. Do not display dialog!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_0
    return-void

    .line 369
    :cond_0
    const-string v0, "MultiSimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayErrorDialog!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 361
    const-string v0, "MultiSimSettings"

    const-string v1, "onClick!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v1, 0x7f050019

    invoke-virtual {p0, v1}, Lcom/android/settings/MultiSimSettings;->addPreferencesFromResource(I)V

    .line 94
    const-string v1, "voice"

    invoke-virtual {p0, v1}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    .line 95
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    .line 97
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    const-string v1, "sms"

    invoke-virtual {p0, v1}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    .line 99
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string v1, "config_sub"

    invoke-virtual {p0, v1}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    .line 101
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CONFIG_SUB"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "MultiSimSettings"

    const-string v2, "Airplane mode is ON, grayout the config subscription menu!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 106
    :cond_0
    const/4 v0, 0x0

    .local v0, subId:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 333
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 334
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b067e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 337
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 338
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 342
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 356
    const-string v0, "MultiSimSettings"

    const-string v1, "onDismiss!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 134
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v11, 0x1

    .line 218
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 222
    .local v6, summaries:[Ljava/lang/CharSequence;
    const-string v8, "voice"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070046

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    move-object v8, p2

    .line 224
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 225
    .local v7, voiceSub:I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 226
    invoke-static {v11}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 227
    iget-object v8, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    const-string v8, "MultiSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prompt is enabled "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    iget-object v8, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    .end local v7           #voiceSub:I
    :cond_0
    const-string v8, "data"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, p2

    .line 243
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, dataSub:I
    const-string v8, "MultiSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDataSubscription "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v8, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    if-eqz v8, :cond_1

    .line 246
    const/16 v8, 0x64

    invoke-virtual {p0, v8}, Lcom/android/settings/MultiSimSettings;->showDialog(I)V

    .line 248
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    .line 249
    .local v2, mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget-object v8, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-static {v8, v11, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 250
    .local v3, setDdsMsg:Landroid/os/Message;
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setDataSubscription(ILandroid/os/Message;)V

    .line 253
    .end local v0           #dataSub:I
    .end local v2           #mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    .end local v3           #setDdsMsg:Landroid/os/Message;
    :cond_2
    const-string v8, "sms"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 254
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 255
    .local v4, smsSub:I
    const-string v8, "MultiSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSMSSubscription "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v8, p0, Lcom/android/settings/MultiSimSettings;->subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_6

    .line 258
    invoke-static {v4}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setSMSSubscription(I)V

    .line 259
    iget-object v8, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    aget-object v9, v6, v4

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    :goto_1
    iget-object v8, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    .end local v4           #smsSub:I
    :cond_3
    return v11

    .line 229
    .restart local v7       #voiceSub:I
    .restart local p2
    :cond_4
    iget-object v8, p0, Lcom/android/settings/MultiSimSettings;->subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_5

    .line 231
    const-string v8, "MultiSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVoiceSubscription "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 233
    invoke-static {v7}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setVoiceSubscription(I)V

    .line 234
    iget-object v8, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 236
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0683

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, status:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    .end local v5           #status:Ljava/lang/String;
    .end local v7           #voiceSub:I
    .end local p2
    .restart local v4       #smsSub:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0682

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 262
    .restart local v5       #status:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 347
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 352
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 118
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 119
    .local v0, count:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 126
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 127
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateState()V

    .line 128
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0
.end method
