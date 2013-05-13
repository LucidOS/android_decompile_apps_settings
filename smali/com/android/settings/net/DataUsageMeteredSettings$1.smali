.class Lcom/android/settings/net/DataUsageMeteredSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageMeteredSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/DataUsageMeteredSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/net/DataUsageMeteredSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/net/DataUsageMeteredSettings$1;->this$0:Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings$1;->this$0:Lcom/android/settings/net/DataUsageMeteredSettings;

    iget-object v2, p0, Lcom/android/settings/net/DataUsageMeteredSettings$1;->this$0:Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v2}, Lcom/android/settings/net/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    #calls: Lcom/android/settings/net/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/settings/net/DataUsageMeteredSettings;->access$000(Lcom/android/settings/net/DataUsageMeteredSettings;Landroid/content/Context;)V

    .line 72
    :cond_1
    return-void
.end method
