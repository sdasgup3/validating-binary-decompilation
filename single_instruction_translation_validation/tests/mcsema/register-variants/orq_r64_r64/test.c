void leaf() {
  __asm__("orq %rcx, %rbx");
  }

void main() {
  leaf();
}