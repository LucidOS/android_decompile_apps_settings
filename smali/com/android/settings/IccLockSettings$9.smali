.class Lcom/android/settings/IccLockSettings$9;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->makeAlertPopUpPck()V
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
    .line 1411
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$9;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$9;->this$0:Lcom/android/settings/IccLockSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z
    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->access$1302(Lcom/android/settings/IccLockSettings;Z)Z

    .line 1414
    return-void
.end method
