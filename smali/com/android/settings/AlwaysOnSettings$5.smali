.class Lcom/android/settings/AlwaysOnSettings$5;
.super Ljava/lang/Object;
.source "AlwaysOnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AlwaysOnSettings;->resultAlertDlg(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AlwaysOnSettings;

.field final synthetic val$dataSettingValue:I


# direct methods
.method constructor <init>(Lcom/android/settings/AlwaysOnSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings/AlwaysOnSettings$5;->this$0:Lcom/android/settings/AlwaysOnSettings;

    iput p2, p0, Lcom/android/settings/AlwaysOnSettings$5;->val$dataSettingValue:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 211
    iget v1, p0, Lcom/android/settings/AlwaysOnSettings$5;->val$dataSettingValue:I

    packed-switch v1, :pswitch_data_0

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AlwaysOnSettings$5;->this$0:Lcom/android/settings/AlwaysOnSettings;

    #getter for: Lcom/android/settings/AlwaysOnSettings;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/settings/AlwaysOnSettings;->access$200(Lcom/android/settings/AlwaysOnSettings;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 233
    iget-object v1, p0, Lcom/android/settings/AlwaysOnSettings$5;->this$0:Lcom/android/settings/AlwaysOnSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings/AlwaysOnSettings;->connectionDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/settings/AlwaysOnSettings;->access$402(Lcom/android/settings/AlwaysOnSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 234
    return-void

    .line 214
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AlwaysOnSettings$5;->this$0:Lcom/android/settings/AlwaysOnSettings;

    #getter for: Lcom/android/settings/AlwaysOnSettings;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;
    invoke-static {v1}, Lcom/android/settings/AlwaysOnSettings;->access$300(Lcom/android/settings/AlwaysOnSettings;)Lcom/android/internal/telephony/ISkyDataConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISkyDataConnection;->setDataConnectionMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mobile data operation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/AlwaysOnSettings$5;->this$0:Lcom/android/settings/AlwaysOnSettings;

    #getter for: Lcom/android/settings/AlwaysOnSettings;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;
    invoke-static {v1}, Lcom/android/settings/AlwaysOnSettings;->access$300(Lcom/android/settings/AlwaysOnSettings;)Lcom/android/internal/telephony/ISkyDataConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISkyDataConnection;->setDataConnectionMode(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mobile data operation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
