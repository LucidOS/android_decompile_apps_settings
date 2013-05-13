.class public Lcom/android/settings/deviceinfo/USBSettingsTips;
.super Landroid/app/Activity;
.source "USBSettingsTips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/USBSettingsTips$PageChangeListender;,
        Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;,
        Lcom/android/settings/deviceinfo/USBSettingsTips$PagerAdapterClass;
    }
.end annotation


# instance fields
.field private mCurrentTabIndex:I

.field private mIsFirstRun:Z

.field private mPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mIsFirstRun:Z

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mCurrentTabIndex:I

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/USBSettingsTips;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mCurrentTabIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/USBSettingsTips;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mCurrentTabIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/USBSettingsTips;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private createTab()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 58
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 59
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 60
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 62
    const/4 v4, 0x3

    new-array v3, v4, [Landroid/app/ActionBar$Tab;

    .line 63
    .local v3, tab:[Landroid/app/ActionBar$Tab;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 65
    .local v1, t:J
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0b0845

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    new-instance v5, Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;-><init>(Lcom/android/settings/deviceinfo/USBSettingsTips;)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    aput-object v4, v3, v7

    .line 70
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0b0846

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    new-instance v5, Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;-><init>(Lcom/android/settings/deviceinfo/USBSettingsTips;)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    aput-object v4, v3, v9

    .line 75
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0b0847

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    new-instance v5, Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;-><init>(Lcom/android/settings/deviceinfo/USBSettingsTips;)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    aput-object v4, v3, v8

    .line 80
    aget-object v4, v3, v7

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 81
    aget-object v4, v3, v9

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 82
    aget-object v4, v3, v8

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 198
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f040089

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->setContentView(I)V

    .line 38
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mPager:Landroid/support/v4/view/ViewPager;

    .line 39
    iget-object v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/settings/deviceinfo/USBSettingsTips$PagerAdapterClass;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/deviceinfo/USBSettingsTips$PagerAdapterClass;-><init>(Lcom/android/settings/deviceinfo/USBSettingsTips;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->createTab()V

    .line 43
    iget-object v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/settings/deviceinfo/USBSettingsTips$PageChangeListender;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/USBSettingsTips$PageChangeListender;-><init>(Lcom/android/settings/deviceinfo/USBSettingsTips;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    const-string v0, "CurrentTabIndex"

    iget v1, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mCurrentTabIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mCurrentTabIndex:I

    .line 47
    iget-object v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mCurrentTabIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    const-string v0, "CurrentTabIndex"

    iget v1, p0, Lcom/android/settings/deviceinfo/USBSettingsTips;->mCurrentTabIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    return-void
.end method
