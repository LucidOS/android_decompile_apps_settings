.class Lcom/android/settings/TimeValidPopup$7;
.super Ljava/lang/Object;
.source "TimeValidPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 109
    iput-object p1, p0, Lcom/android/settings/TimeValidPopup$7;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/TimeValidPopup$7;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-virtual {v0}, Lcom/android/settings/TimeValidPopup;->finish()V

    .line 114
    return-void
.end method
