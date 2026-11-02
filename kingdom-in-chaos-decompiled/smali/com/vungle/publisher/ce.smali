.class public final Lcom/vungle/publisher/ce;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/Long;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/vungle/publisher/ce;->a:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/vungle/publisher/ce;->b:I

    .line 12
    iput-object p3, p0, Lcom/vungle/publisher/ce;->d:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/vungle/publisher/ce;->c:Ljava/lang/Long;

    .line 14
    return-void
.end method
