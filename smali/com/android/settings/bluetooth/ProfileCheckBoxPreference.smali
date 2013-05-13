.class public Lcom/android/settings/bluetooth/ProfileCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "ProfileCheckBoxPreference.java"


# instance fields
.field private mNoPreferred:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/ProfileCheckBoxPreference;->mNoPreferred:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/ProfileCheckBoxPreference;->mNoPreferred:Z

    .line 34
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 40
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, checkBox:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/ProfileCheckBoxPreference;->mNoPreferred:Z

    if-eqz v1, :cond_0

    .line 42
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNoPreferred(Z)V
    .locals 0
    .parameter "noPreferred"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/ProfileCheckBoxPreference;->mNoPreferred:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ProfileCheckBoxPreference;->notifyChanged()V

    .line 52
    return-void
.end method
