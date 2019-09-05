void leaf() {
  __asm__("andnl (%rdx), %ecx, %ebx");
  }

void main() {
  leaf();
}