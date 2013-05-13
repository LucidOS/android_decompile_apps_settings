.class public Lcom/android/settings/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mListner:Landroid/view/View$OnClickListener;

.field private mTextResID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/android/settings/ButtonPreference;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/android/settings/ButtonPreference;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/android/settings/ButtonPreference;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Lcom/android/settings/ButtonPreference;->setLayoutResource(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 40
    const v0, 0x7f0800e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ButtonPreference;->mButton:Landroid/widget/Button;

    .line 41
    iget v0, p0, Lcom/android/settings/ButtonPreference;->mTextResID:I

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mButton:Landroid/widget/Button;

    iget v1, p0, Lcom/android/settings/ButtonPreference;->mTextResID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mListner:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ButtonPreference;->mListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_1
    return-void
.end method

.method public setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/ButtonPreference;->mListner:Landroid/view/View$OnClickListener;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/ButtonPreference;->notifyChanged()V

    .line 58
    return-void
.end method

.method public setButtonTextResourceID(I)V
    .locals 0
    .parameter "resID"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/settings/ButtonPreference;->mTextResID:I

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/ButtonPreference;->notifyChanged()V

    .line 53
    return-void
.end method
