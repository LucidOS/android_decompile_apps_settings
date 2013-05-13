.class public Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataEnableFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2171
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 2173
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2179
    :goto_0
    return-void

    .line 2174
    :cond_0
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$000()Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$002(Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;)Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    .line 2175
    :cond_1
    new-instance v0, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;-><init>()V

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$002(Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;)Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    .line 2176
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$000()Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2177
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$000()Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->setCancelable(Z)V

    .line 2178
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$000()Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataEnable"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 2183
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2185
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2186
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0808

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2188
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2197
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$2;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
