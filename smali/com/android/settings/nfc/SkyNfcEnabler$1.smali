.class Lcom/android/settings/nfc/SkyNfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "SkyNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/SkyNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/SkyNfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/SkyNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/nfc/SkyNfcEnabler$1;->this$0:Lcom/android/settings/nfc/SkyNfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "SkyNfcEnabler"

    const-string v2, "NfcAdapter.ACTION_ADAPTER_STATE_CHANGE received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler$1;->this$0:Lcom/android/settings/nfc/SkyNfcEnabler;

    #getter for: Lcom/android/settings/nfc/SkyNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings/nfc/SkyNfcEnabler;->access$000(Lcom/android/settings/nfc/SkyNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 50
    iget-object v1, p0, Lcom/android/settings/nfc/SkyNfcEnabler$1;->this$0:Lcom/android/settings/nfc/SkyNfcEnabler;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/settings/nfc/SkyNfcEnabler;->handleNfcStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/settings/nfc/SkyNfcEnabler;->access$100(Lcom/android/settings/nfc/SkyNfcEnabler;I)V

    .line 54
    :cond_0
    return-void
.end method
