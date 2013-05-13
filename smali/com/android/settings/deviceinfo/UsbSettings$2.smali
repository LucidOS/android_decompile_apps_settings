.class Lcom/android/settings/deviceinfo/UsbSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
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
    .line 164
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "content"
    .parameter "intent"

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x0

    const/16 v8, 0x3e9

    const/16 v7, 0x3e8

    const/4 v6, 0x1

    .line 167
    const-string v3, "UsbConnectionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive broadcast event intent.getAction() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v4, "connected"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mConnectedUSB:Ljava/lang/Boolean;
    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$202(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 171
    const-string v3, "sys.usb.config"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, currentMode:Ljava/lang/String;
    const-string v3, "persist.sys.usb.config"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, defaultMode:Ljava/lang/String;
    const-string v3, "UsbConnectionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sys.usb.config => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v3, "UsbConnectionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.sys.usb.config => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v3, "persist.pantech.usb.current"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    const-string v3, "persist.pantech.usb.default"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v3, "UsbConnectionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.pantech.usb.current => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v3, "UsbConnectionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.pantech.usb.default => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v3, "UsbConnectionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usb connect state => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mConnectedUSB:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v3, "UsbConnectionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentMode => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "UsbConnectionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultMode => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mConnectedUSB:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v6, :cond_3

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 190
    move-object v1, v2

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$300(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)Z
    invoke-static {v3, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$300(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)Z

    .line 201
    :cond_1
    :goto_0
    const-string v3, "configured"

    invoke-virtual {p2, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 202
    .local v0, configured:Z
    if-ne v0, v6, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 204
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    const-string v3, "UsbConnectionSettings"

    const-string v4, "In mStateReceiver MESSAGE_DIMISS_PROGRESS send"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 210
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    const-string v3, "UsbConnectionSettings"

    const-string v4, "In mStateReceiver MESSAGE_START_USBSTORAGEACTIVITY send"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 222
    :cond_2
    return-void

    .line 198
    .end local v0           #configured:Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)Z
    invoke-static {v3, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$300(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)Z

    goto :goto_0
.end method
