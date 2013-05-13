.class Lcom/android/settings/bluetooth/BluetoothPairingRequest$1;
.super Ljava/util/TimerTask;
.source "BluetoothPairingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothPairingRequest;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingRequest;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingRequest;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingRequest;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingRequest;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingRequest;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingRequest;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingRequest;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingRequest;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 131
    const-string v0, "BluetoothPairingRequest"

    const-string v1, "mWakeLock.release()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    return-void
.end method
