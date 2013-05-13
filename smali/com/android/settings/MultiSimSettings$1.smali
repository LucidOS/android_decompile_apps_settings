.class Lcom/android/settings/MultiSimSettings$1;
.super Landroid/os/Handler;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiSimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 275
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 277
    :pswitch_0
    const-string v5, "MultiSimSettings"

    const-string v6, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    iget-boolean v5, v5, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    if-eqz v5, :cond_0

    .line 279
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/android/settings/MultiSimSettings;->dismissDialog(I)V

    .line 281
    :cond_0
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v5}, Lcom/android/settings/MultiSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 282
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    #calls: Lcom/android/settings/MultiSimSettings;->updateDataSummary()V
    invoke-static {v5}, Lcom/android/settings/MultiSimSettings;->access$000(Lcom/android/settings/MultiSimSettings;)V

    .line 284
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 288
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v6}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0681

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, status:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v5, v3}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v3           #status:Ljava/lang/String;
    :cond_1
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 297
    .local v2, result:Z
    const-string v5, "MultiSimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SET_DATA_SUBSCRIPTION_DONE: result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-ne v2, v8, :cond_2

    .line 300
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v5}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b067f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 301
    .restart local v3       #status:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v5}, Lcom/android/settings/MultiSimSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 303
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 305
    .end local v3           #status:Ljava/lang/String;
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v5}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0680

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    .restart local v3       #status:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    invoke-virtual {v5, v3}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #result:Z
    .end local v3           #status:Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    iget-object v5, v5, Lcom/android/settings/MultiSimSettings;->subManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v1

    .line 313
    .local v1, count:I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 314
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    #getter for: Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/settings/MultiSimSettings;->access$100(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v5

    const v6, 0x7f070045

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 315
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    #getter for: Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/settings/MultiSimSettings;->access$100(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v5

    const v6, 0x7f070047

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 317
    :cond_3
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    #getter for: Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/settings/MultiSimSettings;->access$100(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v5

    const v6, 0x7f070048

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 318
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    #getter for: Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/settings/MultiSimSettings;->access$100(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;

    move-result-object v5

    const v6, 0x7f070049

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 322
    .end local v1           #count:I
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    #calls: Lcom/android/settings/MultiSimSettings;->updateVoiceSummary()V
    invoke-static {v5}, Lcom/android/settings/MultiSimSettings;->access$200(Lcom/android/settings/MultiSimSettings;)V

    goto/16 :goto_0

    .line 325
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings$1;->this$0:Lcom/android/settings/MultiSimSettings;

    #calls: Lcom/android/settings/MultiSimSettings;->updateSmsSummary()V
    invoke-static {v5}, Lcom/android/settings/MultiSimSettings;->access$300(Lcom/android/settings/MultiSimSettings;)V

    goto/16 :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
