.class public Lcom/android/settings/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPckPreference$OnPckEnteredListener;
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# static fields
.field public static mContext:Landroid/content/Context;

.field private static mPckCnt:I

.field private static mPinCnt:I


# instance fields
.field private bAlertPopStateOn:Z

.field dlg:Landroid/app/ProgressDialog;

.field intent:Landroid/content/Intent;

.field private mDialogState:I

.field private mDialogStatePck:I

.field private mError:Ljava/lang/String;

.field private mErrorPck:Ljava/lang/String;

.field private mHandelrUsingHandlerThread:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

.field private mNewPck:Ljava/lang/String;

.field private mNewPin:Ljava/lang/String;

.field private mOldPck:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

.field private mPck:Ljava/lang/String;

.field private mPckDialog:Lcom/android/settings/EditPckPreference;

.field private mPckToggle:Landroid/preference/CheckBoxPreference;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z

.field private mToStateMenu:Z

.field private mToStatePck:Z

.field subscription:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 129
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 132
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 189
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    .line 212
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    .line 215
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 263
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private DialogProgress()V
    .locals 4

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    .line 1590
    :cond_0
    const-string v0, ""

    const v1, 0x7f0b07f8

    invoke-virtual {p0, v1}, Lcom/android/settings/IccLockSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    .line 1594
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1595
    new-instance v1, Lcom/android/settings/IccLockSettings$14;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$14;-><init>(Lcom/android/settings/IccLockSettings;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1601
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccLockChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccPinChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/IccLockSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/IccLockSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/settings/IccLockSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPckPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/IccLockSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/IccLockSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setPckDialogValues()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/IccLockSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/IccLockSettings;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/IccLockSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/IccLockSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccPckLockChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccPckChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    return v0
.end method

.method private getPinRemainCount()I
    .locals 4

    .prologue
    .line 661
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getIccPin1RetryCount()I

    move-result v0

    .line 663
    .local v0, nPINRemainCount:I
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinRemainCount() nPINRemainCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return v0
.end method

.method private handleException(Ljava/lang/Throwable;ILandroid/os/AsyncResult;)V
    .locals 5
    .parameter "exception"
    .parameter "requestType"
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 944
    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_4

    .line 945
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 946
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 948
    const/16 v2, 0x64

    if-ne p2, v2, :cond_1

    .line 949
    const v1, 0x7f0b02d6

    .line 953
    .local v1, id:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 954
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 992
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    .end local v1           #id:I
    :cond_0
    :goto_1
    return-void

    .line 951
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    const v1, 0x7f0b02d5

    .restart local v1       #id:I
    goto :goto_0

    .line 958
    .end local v1           #id:I
    :cond_2
    iget-object v2, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 960
    iget-object v2, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v3

    sput v2, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    .line 961
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleException(). mPinCnt from ar.result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpPin()V

    goto :goto_1

    .line 980
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->getPinRemainCount()I

    move-result v2

    sput v2, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    .line 982
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleException(). mPinCnt from TelephonyManager : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 988
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    .restart local p1
    :cond_4
    instance-of v2, p1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 989
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 990
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    goto :goto_1
.end method

.method private iccLockChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 1027
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iccLockChanged() : mToState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1029
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1046
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1047
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 1048
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1056
    :goto_1
    return-void

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const v1, 0x7f0b07e5

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setSummary(I)V

    .line 1043
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1051
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/IccLockSettings;->handleException(Ljava/lang/Throwable;ILandroid/os/AsyncResult;)V

    goto :goto_1
.end method

.method private iccPckChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/16 v4, 0x6b

    .line 1129
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1130
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1133
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PCK Lock : Pck change Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    sget v1, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    .line 1140
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1144
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpPck()V

    .line 1162
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return-void

    .line 1148
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1150
    const/4 v1, 0x5

    sput v1, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    .line 1153
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1158
    :cond_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b07f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1160
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetPckDialogState()V

    goto :goto_0
.end method

.method private iccPckLockChanged(Z)V
    .locals 4
    .parameter "success"

    .prologue
    const/16 v3, 0x6b

    const/4 v2, 0x0

    .line 1060
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1064
    :cond_0
    if-eqz p1, :cond_3

    .line 1066
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    const/4 v0, 0x5

    sput v0, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    .line 1071
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1078
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    if-eqz v0, :cond_2

    .line 1080
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1087
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetPckDialogState()V

    .line 1104
    :goto_1
    return-void

    .line 1084
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1090
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1092
    sget v0, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    .line 1095
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1102
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpPck()V

    goto :goto_1
.end method

.method private iccPinChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 1108
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/IccLockSettings;->handleException(Ljava/lang/Throwable;ILandroid/os/AsyncResult;)V

    .line 1125
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1120
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static isIccLockEnabled()Z
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method private makeAlertPopUpError(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    .line 1426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b07e3

    new-instance v2, Lcom/android/settings/IccLockSettings$10;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/IccLockSettings$10;-><init>(Lcom/android/settings/IccLockSettings;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1449
    new-instance v1, Lcom/android/settings/IccLockSettings$11;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/IccLockSettings$11;-><init>(Lcom/android/settings/IccLockSettings;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1468
    new-instance v1, Lcom/android/settings/IccLockSettings$12;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/IccLockSettings$12;-><init>(Lcom/android/settings/IccLockSettings;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1486
    return-void
.end method

.method private makeAlertPopUpMenuAccept()V
    .locals 3

    .prologue
    .line 1607
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0800

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0801

    new-instance v2, Lcom/android/settings/IccLockSettings$17;

    invoke-direct {v2, p0}, Lcom/android/settings/IccLockSettings$17;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0802

    new-instance v2, Lcom/android/settings/IccLockSettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/IccLockSettings$16;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/IccLockSettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$15;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1641
    return-void
.end method

.method private makeAlertPopUpPck()V
    .locals 7

    .prologue
    const v2, 0x7f0b07fa

    const v6, 0x7f0b07e3

    const/4 v5, 0x1

    .line 1352
    iput-boolean v5, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    .line 1354
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1356
    sget v0, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    if-nez v0, :cond_0

    .line 1358
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b07fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/IccLockSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$7;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1417
    :goto_0
    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1378
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b07fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1379
    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1388
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 1389
    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 1390
    iget v2, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    if-eq v2, v5, :cond_1

    .line 1391
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 1392
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setPckDialogValues()V

    .line 1394
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/IccLockSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$8;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1410
    new-instance v1, Lcom/android/settings/IccLockSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$9;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1383
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1384
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b07f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private makeAlertPopUpPin()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1272
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1274
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeAlertPopUpPin() : mPinCnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    sget v1, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1281
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 1341
    :cond_1
    :goto_0
    return-void

    .line 1303
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    .line 1306
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 1307
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 1308
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eq v1, v4, :cond_3

    .line 1309
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 1310
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 1312
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1314
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b07c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b07e3

    new-instance v2, Lcom/android/settings/IccLockSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/IccLockSettings$5;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1328
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1332
    new-instance v1, Lcom/android/settings/IccLockSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$6;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method private reasonablePck(Ljava/lang/String;)Z
    .locals 2
    .parameter "pck"

    .prologue
    .line 1223
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 1225
    :cond_0
    const/4 v0, 0x0

    .line 1229
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 1213
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 1214
    :cond_0
    const/4 v0, 0x0

    .line 1216
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerPUKSuccessListener()V
    .locals 2

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1490
    const-string v0, "IccLockSettings"

    const-string v1, "Broadcast receiver!! : Regist!! Receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    new-instance v0, Lcom/android/settings/IccLockSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$13;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    .line 1559
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1561
    const-string v1, "com.android.settings.action.USIMREADINGDONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1562
    const-string v1, "com.android.settings.action.USIMREADINGNOTDONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1563
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1564
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1566
    :cond_0
    return-void
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 1235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 1236
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 1237
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 1238
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 1239
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 1240
    return-void
.end method

.method private resetPckDialogState()V
    .locals 1

    .prologue
    .line 1244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 1245
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 1246
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 1247
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setPckDialogValues()V

    .line 1248
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 1249
    return-void
.end method

.method private setDialogValues()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b07d9

    .line 584
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 585
    const-string v0, ""

    .line 586
    .local v0, message:Ljava/lang/String;
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v3, :pswitch_data_0

    .line 631
    :goto_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 633
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    iput-object v6, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 636
    iput-object v6, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 641
    :cond_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b07e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, strPinCntFormat:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->getPinRemainCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, strShowText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 650
    return-void

    .line 595
    .end local v1           #strPinCntFormat:Ljava/lang/String;
    .end local v2           #strShowText:Ljava/lang/String;
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b07d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 605
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b07d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 615
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b07d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 625
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b07d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 586
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setPckDialogValues()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b07ea

    .line 671
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPckPreference;->setText(Ljava/lang/String;)V

    .line 672
    const-string v0, ""

    .line 673
    .local v0, message:Ljava/lang/String;
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    packed-switch v3, :pswitch_data_0

    .line 695
    :goto_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    iput-object v6, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 698
    iput-object v6, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 701
    :cond_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 703
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b07fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, strPckCntFormat:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, strShowText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    .end local v1           #strPckCntFormat:Ljava/lang/String;
    .end local v2           #strShowText:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/EditPckPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 712
    return-void

    .line 675
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b07eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 679
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPckPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 682
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b07ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 683
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPckPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 686
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b07ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 687
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPckPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 690
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b07f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 691
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPckPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPckDialog()V
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    if-nez v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setPckDialogValues()V

    .line 579
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPckPreference;->showPckDialog()V

    goto :goto_0
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 569
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 6

    .prologue
    .line 915
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 921
    .local v0, callback:Landroid/os/Message;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setIccLockEnabled(ZLjava/lang/String;)I

    move-result v2

    .line 922
    .local v2, err:I
    if-nez v2, :cond_0

    .line 924
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 932
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 935
    return-void

    .line 928
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 929
    .local v1, e:Lcom/android/internal/telephony/CommandException;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v1, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method private tryChangePck()V
    .locals 7

    .prologue
    .line 1192
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1195
    .local v0, callback:Landroid/os/Message;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mOldPck:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mNewPck:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/TelephonyManager;->changePersoDck2(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1197
    .local v2, err:I
    if-nez v2, :cond_0

    .line 1199
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1207
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1209
    return-void

    .line 1203
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1204
    .local v1, e:Lcom/android/internal/telephony/CommandException;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v1, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method private tryChangePckLockState()V
    .locals 4

    .prologue
    .line 999
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryChangePckLockState : mPCK>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : mToStatePck>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    new-instance v0, Lcom/android/settings/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$4;-><init>(Lcom/android/settings/IccLockSettings;)V

    .line 1020
    .local v0, PckThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1022
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->DialogProgress()V

    .line 1023
    return-void
.end method

.method private tryChangePin()V
    .locals 6

    .prologue
    .line 1166
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1173
    .local v0, callback:Landroid/os/Message;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1176
    .local v2, err:I
    if-nez v2, :cond_0

    .line 1178
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1186
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1188
    return-void

    .line 1182
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1183
    .local v1, e:Lcom/android/internal/telephony/CommandException;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v1, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const v1, 0x7f0b07e5

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 294
    const-string v0, "IccLockSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->finish()V

    .line 402
    :goto_0
    return-void

    .line 300
    :cond_0
    const v0, 0x7f05002b

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 302
    const-string v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    .line 303
    const-string v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 305
    const-string v0, "icc_pck"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPckPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    .line 306
    const-string v0, "icc_toggle_pck"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    .line 308
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    const-string v0, "menu_enter_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

    .line 311
    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dialogState_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    :cond_2
    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 316
    const-string v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 318
    const-string v0, "dialogOldPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 319
    const-string v0, "dialogNewPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 321
    const-string v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 322
    const-string v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 324
    const-string v0, "dialogState_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 325
    const-string v0, "dialogPin_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 326
    const-string v0, "dialogOldPin_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPck:Ljava/lang/String;

    .line 327
    const-string v0, "dialogNewPin_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPck:Ljava/lang/String;

    .line 328
    const-string v0, "dialogError_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 329
    const-string v0, "enableState_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/EditPckPreference;->setOnPckEnteredListener(Lcom/android/settings/EditPckPreference$OnPckEnteredListener;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->intent:Landroid/content/Intent;

    .line 364
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->intent:Landroid/content/Intent;

    const-string v1, "subscription"

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->subscription:I

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 377
    sput-object p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    .line 378
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->registerPUKSuccessListener()V

    .line 382
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IccLockSettings"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandlerThread:Landroid/os/HandlerThread;

    .line 383
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 385
    new-instance v0, Lcom/android/settings/IccLockSettings$3;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/IccLockSettings$3;-><init>(Lcom/android/settings/IccLockSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1570
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1571
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1573
    :cond_0
    const-string v0, "IccLockSettings"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1576
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1579
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 510
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 511
    return-void
.end method

.method public onPckEntered(Lcom/android/settings/EditPckPreference;Z)V
    .locals 7
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v6, 0x7f0b07f2

    const v5, 0x7f0b07f1

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 787
    if-nez p2, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetPckDialogState()V

    .line 848
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPckPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 793
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->reasonablePck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 794
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto :goto_0

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto :goto_0

    .line 803
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 804
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 805
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto :goto_0

    .line 810
    :cond_4
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 812
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePckLockState()V

    goto :goto_0

    .line 815
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPck:Ljava/lang/String;

    .line 816
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 817
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 818
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 819
    const-string v0, "IccLockSettings"

    const-string v1, "LockSet>>>OldMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto :goto_0

    .line 823
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPck:Ljava/lang/String;

    .line 824
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 825
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 826
    const-string v0, "IccLockSettings"

    const-string v1, "LockSet>>>NewMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto :goto_0

    .line 830
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 831
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 832
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 833
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 835
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 839
    :cond_5
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 840
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto/16 :goto_0

    .line 843
    :cond_6
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 844
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePck()V

    goto/16 :goto_0

    .line 810
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 6
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v5, 0x7f0b07da

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 716
    if-nez p2, :cond_0

    .line 717
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 783
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 729
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto :goto_0

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto :goto_0

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 739
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 740
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 745
    :cond_4
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 747
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 750
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 751
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 752
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 753
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 754
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 757
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 758
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 759
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 760
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 763
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 767
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 769
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 770
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 772
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 773
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 775
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto/16 :goto_0

    .line 778
    :cond_6
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 779
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePin()V

    goto/16 :goto_0

    .line 745
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 852
    iput-object p2, p0, Lcom/android/settings/IccLockSettings;->mPreference:Landroid/preference/Preference;

    .line 853
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 855
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 857
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-nez v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 863
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "S"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 865
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.ISUSIMREADING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v0, usimintent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #usimintent:Landroid/content/Intent;
    :cond_1
    :goto_0
    move v1, v2

    .line 909
    :goto_1
    return v1

    .line 870
    :cond_2
    iput v2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 871
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 874
    :cond_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p2, v3, :cond_5

    .line 879
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 881
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.ISUSIMREADING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 882
    .restart local v0       #usimintent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 886
    .end local v0           #usimintent:Landroid/content/Intent;
    :cond_4
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    goto :goto_1

    .line 892
    :cond_5
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 893
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    .line 895
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    if-nez v4, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 896
    iput v2, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 897
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto :goto_0

    .line 898
    :cond_7
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    if-ne p2, v3, :cond_8

    .line 899
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    goto :goto_1

    .line 904
    :cond_8
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 905
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToStateMenu:Z

    .line 906
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpMenuAccept()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const v6, 0x7f0b07fc

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 423
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    const-string v3, "IccLockSettings"

    const-string v4, "onResume() : Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->intent:Landroid/content/Intent;

    .line 433
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->intent:Landroid/content/Intent;

    const-string v4, "subscription"

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/IccLockSettings;->subscription:I

    .line 440
    const-string v3, "IccLockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 442
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 443
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 444
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    :goto_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getPersoIndEnabled2(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 456
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    sget-object v3, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pck_retry_count"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    .line 462
    sget v3, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    if-nez v3, :cond_0

    .line 464
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/EditPckPreference;->setEnabled(Z)V

    .line 465
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v3, v6}, Lcom/android/settings/EditPckPreference;->setSummary(I)V

    .line 466
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 467
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 473
    :cond_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usim_menu_enter_enable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 487
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    if-ne v1, v2, :cond_4

    .line 505
    :goto_1
    return-void

    .line 446
    :cond_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const v4, 0x7f0b07e5

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setSummary(I)V

    goto :goto_0

    .line 490
    :cond_4
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_5

    .line 491
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 497
    :goto_2
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    if-eqz v1, :cond_6

    .line 498
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto :goto_1

    .line 494
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    goto :goto_2

    .line 501
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetPckDialogState()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v0, "dialogOldPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "dialogNewPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 561
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPckPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    const-string v0, "dialogState_pck"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    const-string v0, "dialogPin_pck"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPckPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v0, "dialogOldPin_pck"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPck:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v0, "dialogNewPin_pck"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPck:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v0, "dialogError_pck"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v0, "enableState_pck"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 559
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method
