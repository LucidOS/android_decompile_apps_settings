.class Lcom/android/settings/EditPckPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPckPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EditPckPreference$OnPckEnteredListener;
    }
.end annotation


# instance fields
.field private mPckListener:Lcom/android/settings/EditPckPreference$OnPckEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/settings/EditPckPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 101
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/EditPckPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 83
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 84
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 86
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 66
    const v1, 0x7f040054

    invoke-virtual {p0, v1}, Lcom/android/settings/EditPckPreference;->setDialogLayoutResource(I)V

    .line 68
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, dialog:Landroid/view/View;
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/EditPckPreference;->mPckListener:Lcom/android/settings/EditPckPreference$OnPckEnteredListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/EditPckPreference;->mPckListener:Lcom/android/settings/EditPckPreference$OnPckEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/EditPckPreference$OnPckEnteredListener;->onPckEntered(Lcom/android/settings/EditPckPreference;Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setOnPckEnteredListener(Lcom/android/settings/EditPckPreference$OnPckEnteredListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/EditPckPreference;->mPckListener:Lcom/android/settings/EditPckPreference$OnPckEnteredListener;

    .line 56
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/EditPckPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 132
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/settings/EditPckPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 134
    return-void
.end method

.method public showPckDialog()V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/settings/EditPckPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 114
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/EditPckPreference;->showDialog(Landroid/os/Bundle;)V

    .line 117
    :cond_1
    return-void
.end method
