.class Lcom/android/settings/nfc/SkyNfcEnabler$2$2;
.super Ljava/lang/Object;
.source "SkyNfcEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/SkyNfcEnabler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/nfc/SkyNfcEnabler$2;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/SkyNfcEnabler$2;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2$2;->this$1:Lcom/android/settings/nfc/SkyNfcEnabler$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2$2;->this$1:Lcom/android/settings/nfc/SkyNfcEnabler$2;

    iget-object v0, v0, Lcom/android/settings/nfc/SkyNfcEnabler$2;->this$0:Lcom/android/settings/nfc/SkyNfcEnabler;

    #getter for: Lcom/android/settings/nfc/SkyNfcEnabler;->mEnableCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/nfc/SkyNfcEnabler;->access$200(Lcom/android/settings/nfc/SkyNfcEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2$2;->this$1:Lcom/android/settings/nfc/SkyNfcEnabler$2;

    iget-object v0, v0, Lcom/android/settings/nfc/SkyNfcEnabler$2;->this$0:Lcom/android/settings/nfc/SkyNfcEnabler;

    #getter for: Lcom/android/settings/nfc/SkyNfcEnabler;->mUseRWCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/nfc/SkyNfcEnabler;->access$400(Lcom/android/settings/nfc/SkyNfcEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2$2;->this$1:Lcom/android/settings/nfc/SkyNfcEnabler$2;

    iget-boolean v1, v1, Lcom/android/settings/nfc/SkyNfcEnabler$2;->val$desiredState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 199
    return-void
.end method
