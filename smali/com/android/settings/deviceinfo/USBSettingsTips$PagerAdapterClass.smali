.class Lcom/android/settings/deviceinfo/USBSettingsTips$PagerAdapterClass;
.super Landroid/support/v4/view/PagerAdapter;
.source "USBSettingsTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/USBSettingsTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterClass"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/USBSettingsTips;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$PagerAdapterClass;->this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;

    .line 98
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 99
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$PagerAdapterClass;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "pager"
    .parameter "position"
    .parameter "view"

    .prologue
    .line 137
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x3

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7
    .parameter "pager"
    .parameter "position"

    .prologue
    const v6, 0x7f0b084a

    const v5, 0x7f080172

    const/4 v4, 0x0

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, v:Landroid/view/View;
    if-nez p2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$PagerAdapterClass;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040087

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, textView:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$PagerAdapterClass;->this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;

    invoke-virtual {v3, v6}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .end local v0           #textView:Landroid/widget/TextView;
    :goto_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 132
    return-object v1

    .line 120
    .restart local p1
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$PagerAdapterClass;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040088

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    .restart local v0       #textView:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$PagerAdapterClass;->this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;

    invoke-virtual {v3, v6}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$PagerAdapterClass;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040086

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "pager"
    .parameter "obj"

    .prologue
    .line 142
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
