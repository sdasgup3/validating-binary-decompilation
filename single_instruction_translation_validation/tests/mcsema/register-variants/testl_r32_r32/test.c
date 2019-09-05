void leaf() {
  __asm__("testl %ecx, %ebx");
  }

void main() {
  leaf();
}