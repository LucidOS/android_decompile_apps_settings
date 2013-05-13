.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Landroid/preference/PreferenceActivity;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;
    }
.end annotation


# static fields
.field private static final PANTECH_USB_MODE_LIST:[Ljava/lang/String;

.field private static final PROP_USB_MODE:[Ljava/lang/String;


# instance fields
.field private mCheckDialog:Z

.field private mConnectedUSB:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mHelp:Lcom/android/settings/ButtonPreference;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mMtp:Lcom/android/settings/RadioButtonPreference;

.field private mOracle:Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;

.field private mPCMode:Lcom/android/settings/RadioButtonPreference;

.field private mPtp:Lcom/android/settings/RadioButtonPreference;

.field private mSdcard:Lcom/android/settings/RadioButtonPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUseDefault:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "persist.pantech.usb.mtp_mode"

    aput-object v1, v0, v2

    const-string v1, "persist.pantech.usb.ptp_mode"

    aput-object v1, v0, v3

    const-string v1, "persist.pantech.usb.ums_mode"

    aput-object v1, v0, v4

    const-string v1, "persist.pantech.usb.pc_mode"

    aput-object v1, v0, v5

    const-string v1, "persist.pantech.usb.charge_mode"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->PROP_USB_MODE:[Ljava/lang/String;

    .line 94
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mtp_mode"

    aput-object v1, v0, v2

    const-string v1, "ptp_mode"

    aput-object v1, v0, v3

    const-string v1, "ums_mode"

    aput-object v1, v0, v4

    const-string v1, "pc_mode"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->PANTECH_USB_MODE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 135
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$2;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 226
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$3;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 718
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->checkSDCardState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mConnectedUSB:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mConnectedUSB:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCheckDialog:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCheckDialog:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/UsbSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->setUSBFunction(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/UsbSettings;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOracle:Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;

    return-object v0
.end method

.method private checkSDCardState()V
    .locals 4

    .prologue
    .line 601
    invoke-static {}, Landroid/os/Environment;->get2ndExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, status:Ljava/lang/String;
    const-string v1, "UsbConnectionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateToggles() sdcard status => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSdcard:Lcom/android/settings/RadioButtonPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/RadioButtonPreference;->setEnabled(Z)V

    .line 613
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSdcard:Lcom/android/settings/RadioButtonPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 7

    .prologue
    const v6, 0x7f0b0843

    const/4 v5, 0x1

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 239
    .local v2, root:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 242
    :cond_0
    const v3, 0x7f050035

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 246
    const-string v3, "usb_mtp"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/RadioButtonPreference;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/RadioButtonPreference;

    .line 253
    const-string v3, "usb_ptp"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/RadioButtonPreference;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/RadioButtonPreference;

    .line 256
    const-string v3, "usb_sdcard"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/RadioButtonPreference;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSdcard:Lcom/android/settings/RadioButtonPreference;

    .line 257
    const-string v3, "usb_pcmode"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/RadioButtonPreference;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPCMode:Lcom/android/settings/RadioButtonPreference;

    .line 258
    const-string v3, "use_default"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUseDefault:Landroid/preference/CheckBoxPreference;

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_settings_when_usb_connected"

    invoke-static {v3, v4}, Lcom/pantech/providers/skysettings/SKYSystem;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 262
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUseDefault:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    const-string v3, "help"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ButtonPreference;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHelp:Lcom/android/settings/ButtonPreference;

    .line 272
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHelp:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v3, v6}, Lcom/android/settings/ButtonPreference;->setButtonTextResourceID(I)V

    .line 273
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHelp:Lcom/android/settings/ButtonPreference;

    new-instance v4, Lcom/android/settings/deviceinfo/UsbSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbSettings$4;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/ButtonPreference;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->setListFooter(Landroid/view/View;)V

    .line 286
    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHelp:Lcom/android/settings/ButtonPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    new-instance v3, Lcom/android/settings/deviceinfo/UsbSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/UsbSettings$5;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :cond_1
    return-object v2

    .line 265
    .end local v0           #button:Landroid/widget/Button;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUseDefault:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getPantachUSBModeKeyword(I)Ljava/lang/String;
    .locals 2
    .parameter "mode"

    .prologue
    .line 631
    packed-switch p1, :pswitch_data_0

    .line 642
    const-string v0, ""

    :goto_0
    return-object v0

    .line 633
    :pswitch_0
    sget-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->PANTECH_USB_MODE_LIST:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 635
    :pswitch_1
    sget-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->PANTECH_USB_MODE_LIST:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 637
    :pswitch_2
    sget-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->PANTECH_USB_MODE_LIST:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 639
    :pswitch_3
    sget-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->PANTECH_USB_MODE_LIST:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getUSBModeIndexByPantechUSBMode(Ljava/lang/String;)I
    .locals 4
    .parameter "mode"

    .prologue
    .line 647
    const-string v2, ",adb"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 649
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 650
    sget-object v2, Lcom/android/settings/deviceinfo/UsbSettings;->PANTECH_USB_MODE_LIST:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 651
    .local v1, modeString:Ljava/lang/String;
    const-string v2, ",adb"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 652
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 657
    .end local v0           #index:I
    .end local v1           #modeString:Ljava/lang/String;
    :goto_1
    return v0

    .line 649
    .restart local v0       #index:I
    .restart local v1       #modeString:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    .end local v1           #modeString:Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getUSBModeKeyword(I)Ljava/lang/String;
    .locals 2
    .parameter "mode"

    .prologue
    .line 616
    packed-switch p1, :pswitch_data_0

    .line 627
    const-string v0, ""

    :goto_0
    return-object v0

    .line 618
    :pswitch_0
    sget-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->PROP_USB_MODE:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "mtp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 620
    :pswitch_1
    sget-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->PROP_USB_MODE:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "ptp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 622
    :pswitch_2
    sget-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->PROP_USB_MODE:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, "mass_storage"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    :pswitch_3
    sget-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->PROP_USB_MODE:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, "serial,diag,obex"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setUSBFunction(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x1

    .line 568
    const-string v2, "UsbConnectionSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setUSBFunction mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->getUSBModeKeyword(I)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, usbModeKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mConnectedUSB:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 573
    const-string v2, ""

    const v3, 0x7f0b0844

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 574
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 576
    const-string v2, "UsbConnectionSettings"

    const-string v3, "In setUSBFunction MESSAGE_DIMISS_PROGRESS send"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 580
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->getPantachUSBModeKeyword(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, PantechUSBModeKey:Ljava/lang/String;
    const-string v2, "persist.pantech.usb.current"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v2, "persist.pantech.usb.default"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v2, "UsbConnectionSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemProperties.set(persist.pantech.usb.current, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v2, "UsbConnectionSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemProperties.set(persist.pantech.usb.default, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v1, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 589
    const-string v2, "UsbConnectionSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUsbManager.setCurrentFunction("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", true);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void
.end method

.method private updateToggles(I)Z
    .locals 2
    .parameter "modeIndex"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->getPantachUSBModeKeyword(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 419
    :cond_0
    const/4 v1, 0x0

    .line 422
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private updateToggles(Ljava/lang/String;)Z
    .locals 6
    .parameter "function"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 428
    const-string v3, "UsbConnectionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateToggles() function => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-nez p1, :cond_0

    .line 430
    const-string p1, ""

    .line 433
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/RadioButtonPreference;->setEnabled(Z)V

    .line 434
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/RadioButtonPreference;->setEnabled(Z)V

    .line 435
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPCMode:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/RadioButtonPreference;->setEnabled(Z)V

    .line 437
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->checkSDCardState()V

    .line 439
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->getUSBModeIndexByPantechUSBMode(Ljava/lang/String;)I

    move-result v0

    .line 441
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 470
    const-string v1, "UsbConnectionSettings"

    const-string v3, "updateToggles() invalid usb mode"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 471
    :goto_0
    return v1

    .line 443
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 444
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 445
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSdcard:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 446
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPCMode:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 449
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 450
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 451
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSdcard:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 452
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPCMode:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 455
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 456
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 457
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSdcard:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 458
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPCMode:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 461
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 462
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 463
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSdcard:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 464
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPCMode:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x2

    .line 594
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 595
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->setUSBFunction(I)V

    .line 596
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(I)Z

    .line 598
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const-wide/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 305
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 306
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 307
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 308
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOracle:Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;

    .line 310
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 328
    if-eqz p1, :cond_2

    .line 330
    const-string v0, "HAVE_MESSAGE_DISMISSPROGRESS"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 332
    const-string v0, "UsbConnectionSettings"

    const-string v1, "In onCreate MESSAGE_DIMISS_PROGRESS send"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 336
    :cond_0
    const-string v0, "HAVE_MESSAGE_STARTUSBSTORAGEACTIVITY"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 338
    const-string v0, "UsbConnectionSettings"

    const-string v1, "In onCreate MESSAGE_START_USBSTORAGEACTIVITY send"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 342
    :cond_1
    const-string v0, "IS_SHOWING_PROGRESS"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 343
    const-string v0, ""

    const v1, 0x7f0b0844

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 346
    :cond_2
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogId"

    .prologue
    const v7, 0x7f0b0843

    const v6, 0x7f0b0403

    .line 663
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04003a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 664
    .local v1, dialogView:Landroid/view/View;
    const v3, 0x7f08007d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 665
    .local v0, check:Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/settings/deviceinfo/UsbSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/UsbSettings$6;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 673
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCheckDialog:Z

    .line 675
    const v3, 0x7f08007c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 677
    .local v2, tips:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 715
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 680
    :pswitch_0
    const v3, 0x7f0b0857

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 682
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/deviceinfo/UsbSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbSettings$7;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 697
    :pswitch_1
    const v3, 0x7f0b0858

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 699
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/deviceinfo/UsbSettings$8;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbSettings$8;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 677
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/16 v4, 0x3e9

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 360
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 362
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 371
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.usb.UsbStorageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->startActivity(Landroid/content/Intent;)V

    .line 378
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    .line 379
    return-void

    .line 366
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 351
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 356
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x3e9

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 477
    const-string v0, "UsbConnectionSettings"

    const-string v1, "In onPreferenceTreeClick Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    const-string v0, "UsbConnectionSettings"

    const-string v1, "In onPreferenceTreeClick isMonkeyRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    :goto_0
    return v3

    .line 490
    :cond_1
    instance-of v0, p2, Lcom/android/settings/RadioButtonPreference;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 491
    check-cast v0, Lcom/android/settings/RadioButtonPreference;

    .line 492
    invoke-virtual {v0}, Lcom/android/settings/RadioButtonPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    const-string v0, "UsbConnectionSettings"

    const-string v1, "In onPreferenceTreeClick already selected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/RadioButtonPreference;

    if-ne p2, v0, :cond_4

    .line 500
    const-string v0, "UsbConnectionSettings"

    const-string v1, "In onPreferenceTreeClick mMtp clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOracle:Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;

    const-string v1, "mtp_not_show_again"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    .line 504
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->showDialog(I)V

    goto :goto_0

    .line 507
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->setUSBFunction(I)V

    .line 508
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(I)Z

    goto :goto_0

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/RadioButtonPreference;

    if-ne p2, v0, :cond_6

    .line 512
    const-string v0, "UsbConnectionSettings"

    const-string v1, "In onPreferenceTreeClick mPtp clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOracle:Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;

    const-string v1, "ptp_not_show_again"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_5

    .line 516
    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->showDialog(I)V

    goto :goto_0

    .line 519
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->setUSBFunction(I)V

    .line 520
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(I)Z

    goto :goto_0

    .line 523
    :cond_6
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSdcard:Lcom/android/settings/RadioButtonPreference;

    if-ne p2, v0, :cond_7

    .line 524
    const-string v0, "UsbConnectionSettings"

    const-string v1, "In onPreferenceTreeClick mSdcard clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->setUSBFunction(I)V

    .line 527
    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(I)Z

    .line 529
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mConnectedUSB:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    const-string v0, "UsbConnectionSettings"

    const-string v1, "In onPreferenceTreeClick MESSAGE_START_USBSTORAGEACTIVITY send"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 536
    :cond_7
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPCMode:Lcom/android/settings/RadioButtonPreference;

    if-ne p2, v0, :cond_8

    .line 537
    const-string v0, "UsbConnectionSettings"

    const-string v1, "In onPreferenceTreeClick mPCMode clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->setUSBFunction(I)V

    .line 540
    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(I)Z

    goto/16 :goto_0

    .line 542
    :cond_8
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUseDefault:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 543
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 544
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_settings_when_usb_connected"

    invoke-static {v0, v1, v3}, Lcom/pantech/providers/skysettings/SKYSystem;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 548
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_settings_when_usb_connected"

    invoke-static {v0, v1, v4}, Lcom/pantech/providers/skysettings/SKYSystem;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 552
    :cond_a
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHelp:Lcom/android/settings/ButtonPreference;

    if-ne p2, v0, :cond_0

    .line 553
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/USBSettingsTips;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 554
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 399
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 403
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 406
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 413
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    const/16 v4, 0x3e9

    const/16 v3, 0x3e8

    const/4 v0, 0x1

    .line 383
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 385
    const-string v1, "HAVE_MESSAGE_DISMISSPROGRESS"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    const-string v1, "HAVE_MESSAGE_STARTUSBSTORAGEACTIVITY"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 389
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 392
    const-string v1, "IS_SHOWING_PROGRESS"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 395
    :cond_0
    return-void

    .line 392
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
