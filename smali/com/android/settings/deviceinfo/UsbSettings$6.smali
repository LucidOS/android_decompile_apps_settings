.class Lcom/android/settings/deviceinfo/UsbSettings$6;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 665
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "button"
    .parameter "check"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mCheckDialog:Z
    invoke-static {v0, p2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$502(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 670
    return-void
.end method
