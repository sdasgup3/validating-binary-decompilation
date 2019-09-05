void leaf() {
  __asm__("cvtsd2sil %xmm1, %ebx");
  }

void main() {
  leaf();
}