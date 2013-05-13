.class public Lcom/android/settings/deviceinfo/USBSettingsTips$PageChangeListender;
.super Ljava/lang/Object;
.source "USBSettingsTips.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/USBSettingsTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageChangeListender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/USBSettingsTips;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$PageChangeListender;->this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 172
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 178
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$PageChangeListender;->this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/USBSettingsTips;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 184
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 186
    .local v1, tab:Landroid/app/ActionBar$Tab;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 190
    .end local v1           #tab:Landroid/app/ActionBar$Tab;
    :cond_0
    return-void
.end method
