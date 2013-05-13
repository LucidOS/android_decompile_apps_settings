.class Lcom/android/settings/IccLockSettings$16;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->makeAlertPopUpMenuAccept()V
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
    .line 1624
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$16;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 1628
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$16;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usim_menu_enter_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1629
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$16;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mMenuEnterToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$2400(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1630
    sget-object v0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$16;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$2300(Lcom/android/settings/IccLockSettings;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0804

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1633
    return-void
.end method
