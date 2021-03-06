.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1

    :goto_0
    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z
    invoke-static {v5, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$002(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 127
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 157
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 129
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_1

    .line 132
    :cond_3
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 133
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 134
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 136
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_1

    .line 142
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    :cond_4
    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 143
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v3, "wifiP2pDevice"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 146
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_1

    .line 147
    :cond_5
    const-string v5, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    const-string v5, "discoveryState"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, discoveryState:I
    if-ne v1, v7, :cond_6

    .line 152
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V
    invoke-static {v4, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    goto :goto_1

    .line 154
    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    goto :goto_1
.end method
