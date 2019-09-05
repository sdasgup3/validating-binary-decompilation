void leaf() {
  __asm__("btl %ecx, %ebx");
  }

void main() {
  leaf();
}