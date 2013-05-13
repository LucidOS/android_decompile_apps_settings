.class Lcom/android/settings/IccLockSettings$10;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;

.field final synthetic val$FromWhere:I


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$10;->this$0:Lcom/android/settings/IccLockSettings;

    iput p2, p0, Lcom/android/settings/IccLockSettings$10;->val$FromWhere:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1435
    iget v0, p0, Lcom/android/settings/IccLockSettings$10;->val$FromWhere:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1437
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$10;->this$0:Lcom/android/settings/IccLockSettings;

    const-string v1, ""

    #setter for: Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->access$1702(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1438
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$10;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->showPinDialog()V
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1200(Lcom/android/settings/IccLockSettings;)V

    .line 1446
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$10;->this$0:Lcom/android/settings/IccLockSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z
    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->access$1302(Lcom/android/settings/IccLockSettings;Z)Z

    .line 1447
    return-void

    .line 1440
    :cond_1
    iget v0, p0, Lcom/android/settings/IccLockSettings$10;->val$FromWhere:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$10;->this$0:Lcom/android/settings/IccLockSettings;

    const-string v1, ""

    #setter for: Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->access$1002(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1443
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$10;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->showPckDialog()V
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1600(Lcom/android/settings/IccLockSettings;)V

    goto :goto_0
.end method
