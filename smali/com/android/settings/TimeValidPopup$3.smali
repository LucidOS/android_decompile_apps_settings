.class Lcom/android/settings/TimeValidPopup$3;
.super Ljava/lang/Object;
.source "TimeValidPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TimeValidPopup;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TimeValidPopup;


# direct methods
.method constructor <init>(Lcom/android/settings/TimeValidPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/TimeValidPopup$3;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, defineIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/TimeValidPopup$3;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-virtual {v1, v0}, Lcom/android/settings/TimeValidPopup;->startActivity(Landroid/content/Intent;)V

    .line 49
    iget-object v1, p0, Lcom/android/settings/TimeValidPopup$3;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-virtual {v1}, Lcom/android/settings/TimeValidPopup;->finish()V

    .line 50
    return-void
.end method
