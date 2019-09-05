void leaf() {
  __asm__("cvttss2sil -4(%rbp), %ebx");
  }

void main() {
  leaf();
}