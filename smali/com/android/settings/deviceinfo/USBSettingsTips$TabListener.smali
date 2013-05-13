.class public Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;
.super Ljava/lang/Object;
.source "USBSettingsTips.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/USBSettingsTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/USBSettingsTips;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;->this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 153
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;->this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    #setter for: Lcom/android/settings/deviceinfo/USBSettingsTips;->mCurrentTabIndex:I
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/USBSettingsTips;->access$002(Lcom/android/settings/deviceinfo/USBSettingsTips;I)I

    .line 158
    iget-object v0, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;->this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;

    #getter for: Lcom/android/settings/deviceinfo/USBSettingsTips;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/USBSettingsTips;->access$100(Lcom/android/settings/deviceinfo/USBSettingsTips;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/USBSettingsTips$TabListener;->this$0:Lcom/android/settings/deviceinfo/USBSettingsTips;

    #getter for: Lcom/android/settings/deviceinfo/USBSettingsTips;->mCurrentTabIndex:I
    invoke-static {v1}, Lcom/android/settings/deviceinfo/USBSettingsTips;->access$000(Lcom/android/settings/deviceinfo/USBSettingsTips;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 159
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 163
    return-void
.end method
