.class Lcom/android/settings/IccLockSettings$11;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 1450
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$11;->this$0:Lcom/android/settings/IccLockSettings;

    iput p2, p0, Lcom/android/settings/IccLockSettings$11;->val$FromWhere:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1453
    iget v0, p0, Lcom/android/settings/IccLockSettings$11;->val$FromWhere:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$11;->this$0:Lcom/android/settings/IccLockSettings;

    const-string v1, ""

    #setter for: Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->access$1702(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1463
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$11;->this$0:Lcom/android/settings/IccLockSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z
    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->access$1302(Lcom/android/settings/IccLockSettings;Z)Z

    .line 1464
    return-void

    .line 1457
    :cond_1
    iget v0, p0, Lcom/android/settings/IccLockSettings$11;->val$FromWhere:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$11;->this$0:Lcom/android/settings/IccLockSettings;

    const-string v1, ""

    #setter for: Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->access$1002(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
