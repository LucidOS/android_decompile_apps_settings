.class Lcom/android/settings/AlwaysOnSettings$3;
.super Ljava/lang/Object;
.source "AlwaysOnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AlwaysOnSettings;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
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
    .line 125
    iput-object p1, p0, Lcom/android/settings/AlwaysOnSettings$3;->this$0:Lcom/android/settings/AlwaysOnSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings$3;->this$0:Lcom/android/settings/AlwaysOnSettings;

    #getter for: Lcom/android/settings/AlwaysOnSettings;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/settings/AlwaysOnSettings;->access$200(Lcom/android/settings/AlwaysOnSettings;)Landroid/app/StatusBarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 130
    return-void
.end method
