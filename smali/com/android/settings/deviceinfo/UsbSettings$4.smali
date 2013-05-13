.class Lcom/android/settings/deviceinfo/UsbSettings$4;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-class v2, Lcom/android/settings/deviceinfo/USBSettingsTips;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->startActivity(Landroid/content/Intent;)V

    .line 279
    return-void
.end method
