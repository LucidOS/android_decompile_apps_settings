.class Lcom/android/settings/IccLockSettings$7;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1363
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v2, 0x7f0b07fc

    const/4 v1, 0x0

    .line 1367
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->resetDialogState()V
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)V

    .line 1368
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1400(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPckPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPckPreference;->setEnabled(Z)V

    .line 1369
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1400(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPckPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/EditPckPreference;->setSummary(I)V

    .line 1370
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1500(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1371
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1500(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1372
    return-void
.end method
