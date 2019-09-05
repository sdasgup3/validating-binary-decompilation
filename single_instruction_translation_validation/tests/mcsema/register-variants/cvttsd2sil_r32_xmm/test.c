void leaf() {
  __asm__("cvttsd2sil %xmm1, %ebx");
  }

void main() {
  leaf();
}