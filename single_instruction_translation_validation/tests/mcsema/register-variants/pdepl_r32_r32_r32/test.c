void leaf() {
  __asm__("pdepl %edx, %ecx, %ebx");
  }

void main() {
  leaf();
}