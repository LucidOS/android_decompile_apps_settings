.class Lcom/android/settings/DataUsageSummary$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 292
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.skt.intent.action.ALWAYS_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 294
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$000()Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$000()Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$000()Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->dismiss()V

    .line 297
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    #setter for: Lcom/android/settings/DataUsageSummary;->mBinding:Z
    invoke-static {v4, v7}, Lcom/android/settings/DataUsageSummary;->access$102(Lcom/android/settings/DataUsageSummary;Z)Z

    .line 298
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    #setter for: Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->access$202(Lcom/android/settings/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 299
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 300
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    #setter for: Lcom/android/settings/DataUsageSummary;->mBinding:Z
    invoke-static {v4, v6}, Lcom/android/settings/DataUsageSummary;->access$102(Lcom/android/settings/DataUsageSummary;Z)Z

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 301
    :cond_2
    const-string v4, "com.skt.intent.action.ALWAYS_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 302
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$400()Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$400()Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$400()Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->dismiss()V

    .line 305
    :cond_3
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    #setter for: Lcom/android/settings/DataUsageSummary;->mBinding:Z
    invoke-static {v4, v7}, Lcom/android/settings/DataUsageSummary;->access$102(Lcom/android/settings/DataUsageSummary;Z)Z

    .line 306
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    #setter for: Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->access$202(Lcom/android/settings/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 307
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 308
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    #setter for: Lcom/android/settings/DataUsageSummary;->mBinding:Z
    invoke-static {v4, v6}, Lcom/android/settings/DataUsageSummary;->access$102(Lcom/android/settings/DataUsageSummary;Z)Z

    goto :goto_0

    .line 309
    :cond_4
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 310
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$000()Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$000()Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 311
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$000()Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->dismiss()V

    .line 313
    :cond_5
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$400()Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$400()Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 314
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$400()Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->dismiss()V

    .line 316
    :cond_6
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    #calls: Lcom/android/settings/DataUsageSummary;->enableDataEnabledSwitch()V
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    .line 318
    :cond_7
    const-string v4, "com.skt.intent.action.3G_MENU_ENABLED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.skt.intent.action.3G_MENU_DISABLED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 321
    :cond_8
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mRoamingDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mRoamingDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 322
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mRoamingDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 323
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v5, 0x0

    #setter for: Lcom/android/settings/DataUsageSummary;->mRoamingDialog:Landroid/app/AlertDialog;
    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->access$602(Lcom/android/settings/DataUsageSummary;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 326
    :cond_9
    const/4 v1, 0x0

    .line 328
    .local v1, bDataRoaming:Z
    :try_start_0
    const-string v4, "iskydataconnection"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISkyDataConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyDataConnection;

    move-result-object v3

    .line 330
    .local v3, skydc:Lcom/android/internal/telephony/ISkyDataConnection;
    invoke-interface {v3}, Lcom/android/internal/telephony/ISkyDataConnection;->getDataRoamingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    .end local v3           #skydc:Lcom/android/internal/telephony/ISkyDataConnection;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$700(Lcom/android/settings/DataUsageSummary;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 331
    :catch_0
    move-exception v2

    .line 332
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "settings ISkyDataConnection error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
