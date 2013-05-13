.class Lcom/android/settings/AlwaysOnSettings$6;
.super Ljava/lang/Object;
.source "AlwaysOnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AlwaysOnSettings;->resultAlertDlg(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AlwaysOnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AlwaysOnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings/AlwaysOnSettings$6;->this$0:Lcom/android/settings/AlwaysOnSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings$6;->this$0:Lcom/android/settings/AlwaysOnSettings;

    #getter for: Lcom/android/settings/AlwaysOnSettings;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/settings/AlwaysOnSettings;->access$200(Lcom/android/settings/AlwaysOnSettings;)Landroid/app/StatusBarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings$6;->this$0:Lcom/android/settings/AlwaysOnSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/AlwaysOnSettings;->connectionDlg:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/AlwaysOnSettings;->access$402(Lcom/android/settings/AlwaysOnSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 243
    return-void
.end method
