.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mIsFromHiddenMenu:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 70
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mIsFromHiddenMenu:Z

    .line 66
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mIsFromHiddenMenu:Z

    .line 58
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mIsFromHiddenMenu:Z

    .line 49
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 50
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 129
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->setLayoutResource(I)V

    .line 130
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 80
    .local v6, view:Landroid/view/View;
    const v8, 0x1010001

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 81
    .local v7, widget:Landroid/view/View;
    if-eqz v7, :cond_1

    instance-of v8, v7, Landroid/widget/RadioButton;

    if-eqz v8, :cond_1

    move-object v2, v7

    .line 82
    check-cast v2, Landroid/widget/RadioButton;

    .line 83
    .local v2, rb:Landroid/widget/RadioButton;
    iget-boolean v8, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v8, :cond_6

    .line 84
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 88
    sput-object v2, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 92
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 93
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 100
    .end local v0           #isChecked:Z
    .end local v2           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const/high16 v8, 0x101

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 101
    .local v4, textLayout:Landroid/view/View;
    if-eqz v4, :cond_2

    instance-of v8, v4, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_2

    .line 102
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v8, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "3"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    if-eqz v4, :cond_5

    instance-of v8, v4, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/settings/ApnPreference;->mIsFromHiddenMenu:Z

    if-nez v8, :cond_5

    .line 112
    const v8, 0x1020016

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 113
    .local v5, textTitle:Landroid/view/View;
    const v8, 0x1020010

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 115
    .local v3, summaryTitle:Landroid/view/View;
    const-string v8, "ApnPreference"

    const-string v9, "Default APN, Set TEXT Gray"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz v5, :cond_4

    instance-of v8, v5, Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 117
    check-cast v5, Landroid/widget/TextView;

    .end local v5           #textTitle:Landroid/view/View;
    const v8, -0x777778

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    :cond_4
    if-eqz v3, :cond_5

    instance-of v8, v3, Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 121
    check-cast v3, Landroid/widget/TextView;

    .end local v3           #summaryTitle:Landroid/view/View;
    const v8, -0xbbbbbc

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    :cond_5
    return-object v6

    .line 96
    .end local v1           #key:Ljava/lang/String;
    .end local v4           #textLayout:Landroid/view/View;
    .restart local v2       #rb:Landroid/widget/RadioButton;
    :cond_6
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 141
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 146
    :cond_0
    if-eqz p2, :cond_2

    .line 147
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 148
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 150
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 155
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 160
    if-eqz p1, :cond_0

    const/high16 v4, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 162
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 164
    .local v2, pos:I
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 167
    .local v3, url:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    .local v1, i:Landroid/content/Intent;
    const-string v4, "isHidden"

    iget-boolean v5, p0, Lcom/android/settings/ApnPreference;->mIsFromHiddenMenu:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #pos:I
    .end local v3           #url:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setIsFromHidden(Z)V
    .locals 0
    .parameter "isHidden"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mIsFromHiddenMenu:Z

    .line 187
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 178
    return-void
.end method
