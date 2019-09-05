void leaf() {
  __asm__("btsq %rcx, %rbx");
  }

void main() {
  leaf();
}