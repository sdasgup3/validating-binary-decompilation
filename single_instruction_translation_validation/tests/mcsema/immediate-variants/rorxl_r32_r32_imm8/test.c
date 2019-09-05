void leaf() {
  __asm__("rorxl $0x77, %ecx, %ebx");
  }

void main() {
  leaf();
}