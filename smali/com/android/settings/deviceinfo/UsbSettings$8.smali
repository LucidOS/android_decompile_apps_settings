.class Lcom/android/settings/deviceinfo/UsbSettings$8;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 702
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 704
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings/deviceinfo/UsbSettings;->setUSBFunction(I)V
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$600(Lcom/android/settings/deviceinfo/UsbSettings;I)V

    .line 705
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$700(Lcom/android/settings/deviceinfo/UsbSettings;I)Z

    .line 707
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mCheckDialog:Z
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mOracle:Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$800(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;

    move-result-object v0

    const-string v1, "ptp_not_show_again"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/UsbSettings$UsbSettingsOracle;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_0
    return-void
.end method
