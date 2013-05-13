.class Lcom/android/settings/IccLockSettings$4;
.super Ljava/lang/Thread;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->tryChangePckLockState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1004
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$800(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x67

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1005
    .local v0, callback:Landroid/os/Message;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/IccLockSettings;->access$1000(Lcom/android/settings/IccLockSettings;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mToStatePck:Z
    invoke-static {v5}, Lcom/android/settings/IccLockSettings;->access$1100(Lcom/android/settings/IccLockSettings;)Z

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/TelephonyManager;->setPersoInd2(Ljava/lang/String;ZI)I

    move-result v2

    .line 1007
    .local v2, err:I
    if-nez v2, :cond_0

    .line 1009
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1017
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1018
    return-void

    .line 1013
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1014
    .local v1, e:Lcom/android/internal/telephony/CommandException;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v1, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_0
.end method
