.class Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 164
    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, newName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    #calls: Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->isValidName(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->access$000(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    #calls: Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->access$100(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    #getter for: Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->access$200(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 180
    const/4 v1, 0x1

    .line 182
    .end local v0           #newName:Ljava/lang/String;
    :cond_0
    return v1

    .line 175
    .restart local v0       #newName:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b06d1

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
