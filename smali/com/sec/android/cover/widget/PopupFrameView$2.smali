.class Lcom/sec/android/cover/widget/PopupFrameView$2;
.super Ljava/lang/Object;
.source "PopupFrameView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/widget/PopupFrameView;->show(Landroid/view/ViewGroup;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/widget/PopupFrameView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/PopupFrameView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/widget/PopupFrameView$2;->this$0:Lcom/sec/android/cover/widget/PopupFrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PopupFrameView$2;->this$0:Lcom/sec/android/cover/widget/PopupFrameView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/PopupFrameView;->close()V

    return-void
.end method
