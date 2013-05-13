.class public Lcom/android/settings/nfc/SkyNfcEnabler;
.super Ljava/lang/Object;
.source "SkyNfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAndroidBeam:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mEnableCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcOff:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUseRWCheckbox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter "context"
    .parameter "enablePreference"
    .parameter "useRwPreference"
    .parameter "androidBeam"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/android/settings/nfc/SkyNfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/SkyNfcEnabler$1;-><init>(Lcom/android/settings/nfc/SkyNfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    .line 64
    iput-object p3, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    .line 65
    iput-object p4, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    .line 66
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 68
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 75
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/SkyNfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/SkyNfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/SkyNfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/SkyNfcEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/SkyNfcEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/SkyNfcEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private handleNfcStateChanged(I)V
    .locals 6
    .parameter "newState"

    .prologue
    const v5, 0x7f0b01d0

    const v4, 0x7f0b01cd

    const v3, 0x7f0b01cb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 304
    packed-switch p1, :pswitch_data_0

    .line 380
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b07c0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b01cc

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 316
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled_RWP2P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 334
    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b07c0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 338
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 345
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 352
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 368
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setEnableNfc(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    .line 159
    move v0, p1

    .line 161
    .local v0, desiredState:Z
    const-string v1, "SkyNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting NFC enable state to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 166
    new-instance v1, Lcom/android/settings/nfc/SkyNfcEnabler$2;

    const-string v2, "toggleNFC"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/nfc/SkyNfcEnabler$2;-><init>(Lcom/android/settings/nfc/SkyNfcEnabler;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/settings/nfc/SkyNfcEnabler$2;->start()V

    .line 204
    return-void
.end method

.method private setUseBeam(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 253
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b01d0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 258
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b01cb

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private setUseNfcRw(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 207
    move v0, p1

    .line 209
    .local v0, desiredState:Z
    const-string v1, "SkyNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting NFC Use RW state to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 214
    new-instance v1, Lcom/android/settings/nfc/SkyNfcEnabler$3;

    const-string v2, "toggleNFC"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/nfc/SkyNfcEnabler$3;-><init>(Lcom/android/settings/nfc/SkyNfcEnabler;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/settings/nfc/SkyNfcEnabler$3;->start()V

    .line 246
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 265
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 268
    iget-boolean v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcOff:Z

    if-eqz v0, :cond_1

    .line 269
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/SkyNfcEnabler;->setEnableNfc(Z)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/SkyNfcEnabler;->setUseBeam(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "value"

    .prologue
    const v8, 0x7f0b0404

    const v7, 0x7f0b0403

    const v6, 0x1040014

    const/4 v5, 0x0

    .line 112
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 113
    .local v1, desiredState:Z
    move-object v0, p1

    .line 117
    .local v0, changedPreference:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    if-ne v0, v2, :cond_2

    .line 119
    if-nez v1, :cond_1

    .line 120
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcOff:Z

    .line 121
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b07c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 155
    :cond_0
    :goto_0
    return v5

    .line 131
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/SkyNfcEnabler;->setEnableNfc(Z)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    if-ne v0, v2, :cond_3

    .line 135
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/SkyNfcEnabler;->setUseNfcRw(Z)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    if-ne v0, v2, :cond_0

    .line 139
    if-nez v1, :cond_4

    .line 140
    iput-boolean v5, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcOff:Z

    .line 141
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 151
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/SkyNfcEnabler;->setUseBeam(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 86
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mAndroidBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/SkyNfcEnabler;->handleNfcStateChanged(I)V

    goto :goto_0
.end method
