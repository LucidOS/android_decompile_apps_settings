.class Lcom/android/settings/IccLockSettings$12;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 1468
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$12;->this$0:Lcom/android/settings/IccLockSettings;

    iput p2, p0, Lcom/android/settings/IccLockSettings$12;->val$FromWhere:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1471
    iget v0, p0, Lcom/android/settings/IccLockSettings$12;->val$FromWhere:I

    if-ne v0, v1, :cond_2

    .line 1473
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$12;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mDialogState:I
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$12;->this$0:Lcom/android/settings/IccLockSettings;

    #setter for: Lcom/android/settings/IccLockSettings;->mDialogState:I
    invoke-static {v0, v2}, Lcom/android/settings/IccLockSettings;->access$302(Lcom/android/settings/IccLockSettings;I)I

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$12;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->setDialogValues()V
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$400(Lcom/android/settings/IccLockSettings;)V

    .line 1483
    :cond_1
    :goto_0
    return-void

    .line 1477
    :cond_2
    iget v0, p0, Lcom/android/settings/IccLockSettings$12;->val$FromWhere:I

    if-ne v0, v2, :cond_1

    .line 1479
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$12;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mDialogStatePck:I
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1800(Lcom/android/settings/IccLockSettings;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$12;->this$0:Lcom/android/settings/IccLockSettings;

    #setter for: Lcom/android/settings/IccLockSettings;->mDialogStatePck:I
    invoke-static {v0, v2}, Lcom/android/settings/IccLockSettings;->access$1802(Lcom/android/settings/IccLockSettings;I)I

    .line 1481
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$12;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->setPckDialogValues()V
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1900(Lcom/android/settings/IccLockSettings;)V

    goto :goto_0
.end method
