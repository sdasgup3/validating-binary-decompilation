void leaf() {
  __asm__("imull %ecx, %ebx");
  }

void main() {
  leaf();
}