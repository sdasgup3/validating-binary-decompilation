void leaf() {
  __asm__("andnl %edx, %ecx, %ebx");
  }

void main() {
  leaf();
}