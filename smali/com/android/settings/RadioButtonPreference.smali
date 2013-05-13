.class public Lcom/android/settings/RadioButtonPreference;
.super Landroid/preference/Preference;
.source "RadioButtonPreference.java"


# instance fields
.field private mCheck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/android/settings/RadioButtonPreference;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/android/settings/RadioButtonPreference;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/android/settings/RadioButtonPreference;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/RadioButtonPreference;->mCheck:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 40
    const v3, 0x7f0800f9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 41
    .local v0, radio:Landroid/widget/RadioButton;
    iget-boolean v3, p0, Lcom/android/settings/RadioButtonPreference;->mCheck:Z

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 43
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, title:Landroid/widget/TextView;
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 46
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, summary:Landroid/widget/TextView;
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "check"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings/RadioButtonPreference;->mCheck:Z

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/RadioButtonPreference;->notifyChanged()V

    .line 54
    return-void
.end method
