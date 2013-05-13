.class Lcom/android/settings/nfc/SkyNfcEnabler$2;
.super Ljava/lang/Thread;
.source "SkyNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/SkyNfcEnabler;->setEnableNfc(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/SkyNfcEnabler;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/SkyNfcEnabler;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2;->this$0:Lcom/android/settings/nfc/SkyNfcEnabler;

    iput-boolean p3, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2;->val$desiredState:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, success:Z
    iget-boolean v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2;->val$desiredState:Z

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2;->this$0:Lcom/android/settings/nfc/SkyNfcEnabler;

    #getter for: Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings/nfc/SkyNfcEnabler;->access$000(Lcom/android/settings/nfc/SkyNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    .line 177
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 178
    const-string v1, "SkyNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully changed NFC enable state to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2;->val$desiredState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2;->this$0:Lcom/android/settings/nfc/SkyNfcEnabler;

    #getter for: Lcom/android/settings/nfc/SkyNfcEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/nfc/SkyNfcEnabler;->access$300(Lcom/android/settings/nfc/SkyNfcEnabler;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/nfc/SkyNfcEnabler$2$1;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/SkyNfcEnabler$2$1;-><init>(Lcom/android/settings/nfc/SkyNfcEnabler$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    :goto_1
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2;->this$0:Lcom/android/settings/nfc/SkyNfcEnabler;

    #getter for: Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings/nfc/SkyNfcEnabler;->access$000(Lcom/android/settings/nfc/SkyNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v0

    goto :goto_0

    .line 193
    :cond_1
    const-string v1, "SkyNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting NFC enable state to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2;->val$desiredState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler$2;->this$0:Lcom/android/settings/nfc/SkyNfcEnabler;

    #getter for: Lcom/android/settings/nfc/SkyNfcEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/nfc/SkyNfcEnabler;->access$300(Lcom/android/settings/nfc/SkyNfcEnabler;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/nfc/SkyNfcEnabler$2$2;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/SkyNfcEnabler$2$2;-><init>(Lcom/android/settings/nfc/SkyNfcEnabler$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
