.class public Lcom/android/settings/SelectSubscription;
.super Landroid/preference/PreferenceActivity;
.source "SelectSubscription.java"


# instance fields
.field private subscriptionPref0:Landroid/preference/PreferenceScreen;

.field private subscriptionPref1:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f050029

    invoke-virtual {p0, v0}, Lcom/android/settings/SelectSubscription;->addPreferencesFromResource(I)V

    .line 54
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 58
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 60
    const-string v3, "subscription_01"

    invoke-virtual {p0, v3}, Lcom/android/settings/SelectSubscription;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    .line 61
    const-string v3, "subscription_02"

    invoke-virtual {p0, v3}, Lcom/android/settings/SelectSubscription;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "PACKAGE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, pkg:Ljava/lang/String;
    const-string v3, "TARGET_CLASS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, targetClass:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v3, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v3, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "subscription"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    iget-object v3, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "subscription"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    return-void
.end method
