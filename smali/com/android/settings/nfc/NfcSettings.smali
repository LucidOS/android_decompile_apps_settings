.class public Lcom/android/settings/nfc/NfcSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcSettings.java"


# instance fields
.field private mNfcEnabler:Lcom/android/settings/nfc/SkyNfcEnabler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v4, 0x7f05001a

    invoke-virtual {p0, v4}, Lcom/android/settings/nfc/NfcSettings;->addPreferencesFromResource(I)V

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 26
    .local v0, activity:Landroid/app/Activity;
    const-string v4, "nfc_on_off"

    invoke-virtual {p0, v4}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 27
    .local v2, nfc:Landroid/preference/CheckBoxPreference;
    const-string v4, "nfc_use_rw_p2p"

    invoke-virtual {p0, v4}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 28
    .local v3, nfcRWP2P:Landroid/preference/CheckBoxPreference;
    const-string v4, "nfc_beam_on_off"

    invoke-virtual {p0, v4}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 30
    .local v1, androidBeam:Landroid/preference/CheckBoxPreference;
    new-instance v4, Lcom/android/settings/nfc/SkyNfcEnabler;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/android/settings/nfc/SkyNfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/SkyNfcEnabler;

    .line 31
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 46
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/SkyNfcEnabler;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/SkyNfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SkyNfcEnabler;->pause()V

    .line 49
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/SkyNfcEnabler;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/SkyNfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SkyNfcEnabler;->resume()V

    .line 40
    :cond_0
    return-void
.end method
